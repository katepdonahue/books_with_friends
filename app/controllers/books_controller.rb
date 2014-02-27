class BooksController < ActionController::Base

  def index # users/:user_id/books or friends/books to see all of your friends books
    if user_signed_in?
      books = User.find(current_user.id).books
      @books = books.as_json(:only => [:id, :title, :year, :s_thumb], :include => :author)
    else
      books = Book.all
      @books = books.as_json(:only => [:id, :title, :year, :s_thumb] , :include => [:author, :users => {:except => :email}])
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
    if Book.find_by_isbn(params[:isbn]) # if the book's already in the database
      @book = Book.find_by_isbn(params[:isbn])
    else
      @book = Book.new
      @book.isbn = params[:isbn]
      @book.get_info
    end
    @book.add_user
    # find author that matches name in database and grab author id, otherwise create new author
    redirect_to "/#/books/#{@book.id}"
  end

  def update
    @book = Book.find(params[:id])
    @book.update_attributes(params[:book])
    redirect_to @book
  end

  def destroy # only from your own profile
    Book.find(params[:id]).destroy
    @book = Book.all
    respond_to do |format|
      format.json{ render :json => @books }
    end
  end

end