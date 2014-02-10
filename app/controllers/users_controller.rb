class UsersController < ActionController::Base
  protect_from_forgery

  def index
    @users = User.all
    respond_to do |format|
      format.json { render :json => @users }
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end