class AuthorsController < ActionController::Base
  protect_from_forgery

  def index # show all authors of your books or friends books
    @authors = Author.all
    render json: @authors.as_json
  end

  def show
    @author = Author.find(params[:id])
    render json: @author.as_json(:include => {:books => {:only => [:id, :title, :year]}})
  end

end