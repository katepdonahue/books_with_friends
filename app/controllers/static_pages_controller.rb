class StaticPagesController < ActionController::Base

  def index
    render 'public/app/index.html'
  end

end