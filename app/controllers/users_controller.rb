class UsersController < ActionController::Base

  def index
    @users = User.all
    respond_to do |format|
      format.json { render :json => @users }
    end
  end

  def show
    @user = User.current_user
    respond_to do |format|
      format.json { render :json => @user}
    end
  end

end