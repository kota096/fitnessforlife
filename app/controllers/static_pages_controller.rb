class StaticPagesController < ApplicationController
  def home
    @user_count = User.all.count
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
    
  end
  
  def about
    
  end
  def contact
  
  end
end
