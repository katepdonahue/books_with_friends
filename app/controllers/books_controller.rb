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

  def create
    @book = Book.new
    @book.title = params[:title]
    author = Author.new
    author.first_name = params[:author][:first_name]
    author.last_name = params[:author][:last_name]
    author.save
    @book.author_id = author.id
    @book.save
    # find author that matches name in database and grab author id, otherwise create new author
    File.read(File.join('public/app/partials', '/#/books/#{@book.id}'))
  end

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