class BooksController < ActionController::Base

  def index # users/:user_id/books or friends/books to see all of your friends books
    if params[:user_id]
      @books = User.find(params[:user_id]).books
      render json: @books.as_json(:only => [:id, :title, :year], :include => :author)
    else
      @books = Book.all
      render json: @books.as_json(:only => [:id, :title, :year], :include => [:author, :users => {:except => :email}])
    end
  end

  def show
    @book = Book.find(params[:id])
    render json: @book.as_json(:except => :author_id, :include => [:author, :users, :reviews => {:only => [:body, :subject], :include => {:user => {:except => :email}}}])
  end

  # def new #   maybe just need create?
  # end

  def create
    @book = Book.create(params[:book])
    redirect_to @book
  end

  # def edit # maybe just need update?
  # end

  def update
    @book = Book.find(params[:id])
    @book.update_attributes(params[:book])
    redirect_to @book
  end

  def destroy # only from your own profile
    Book.find(params[:id]).destroy
    redirect_to @books
  end

end