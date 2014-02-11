class BooksController < ActionController::Base

  def index # users/:user_id/books or friends/books to see all of your friends books
    @books = Book.all
    respond_to do |format|
      format.json { render :json => @books }
    end
  end

  def show
    @book = Book.find(params[:id])
    respond_to do |format|
      format.json { render :json => @book}
    end
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