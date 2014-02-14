class BooksController < ActionController::Base

  def index # users/:user_id/books or friends/books to see all of your friends books
    if params[:user_id]
      books = User.find(params[:user_id]).books
      @books = books.as_json(:only => [:id, :title, :year, :l_thumb], :include => :author)
    else
      books = Book.all
      @books = books.as_json(:only => [:id, :title, :year, :thumb], :include => [:author, :users => {:except => :email}])
    end
    respond_to do |format|
      format.json{ render :json => @books }
    end
  end

  def show
    @book = Book.find(params[:id])
    render json: @book.as_json(:except => :author_id, :include => [:author, :users, :reviews => {:only => [:body, :subject], :include => {:user => {:except => :email}}}])
  end

  def create
    @book = Book.new
    @book.isbn = params[:isbn]
    response = HTTParty.get('https://www.googleapis.com/books/v1/volumes?q=isbn:#{@book.isbn}')
    author = Author.new
    author.first_name = params[:author][:first_name]
    author.last_name = params[:author][:last_name]
    author.save
    @book.author_id = author.id
    @book.save
    # find author that matches name in database and grab author id, otherwise create new author
    redirect_to @book
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