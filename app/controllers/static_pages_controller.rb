class StaticPagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build if logged_in?
  end

  def help
    @user_id = params[:user_id]
    print @user_id
    # debugger
  end

  def about
  end

  def contact
  end
end
