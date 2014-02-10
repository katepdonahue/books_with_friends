class UsersController < ActionController::Base
  protect_from_forgery

  def index
    @users = User.all
    respond_to do |format|
      format.json { render :json => @users }
    end
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.json { render :json => @user}
    end
  end

  # def new                                   is this necessary? 
  # end

  def create
    @user = User.create(params[:user])
    redirect_to @user
  end

  # def edit                                   this does the same thing as show in terms of getting data
  #   @user = User.find(params[:id])           so don't need?
  #   respond_to do |format|
  #     format.json { render :json => @user} 
  #   end
  # end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to @user
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to @users
  end

end