class AuthorsController < ActionController::Base
  protect_from_forgery

  def index # show all authors of your books or friends books
    @authors = Author.all
    respond_to do |format|
      format.json { render :json => @authors }
    end
  end

  def show
    @author = Author.find(params[:id])
    respond_to do |format|
      format.json { render :json => @author}
    end
  end

end