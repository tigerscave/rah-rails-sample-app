class StaticPagesController < ApplicationController
  def home

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
