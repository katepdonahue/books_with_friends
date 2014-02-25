class UsersController < ActionController::Base

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

  def current
    if user_signed_in?
      render :json => current_user.as_json(:except => :email)
    else
      render :status => 404
    end
  end

end