class PagesController < ApplicationController
  def index
    tips_default = Tip.order(id: "DESC").includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}
    @tips_default = Kaminari.paginate_array(tips_default).page(params[:page]).per(5)
    @tips_time = Tip.order(id: "DESC")
  end

  def show
  end

  def arlikes
    @arlikes = Arlike.where(user_id: current_user.id)
  end

  def tiplikes
    @tiplikes = Tiplike.where(user_id: current_user.id)
  end

  def liketips
    @liketips = Liketip.where(user_id: current_user.id)
  end

  def artimeline
    @articles_default = Article.order(id: "DESC").includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}

    @articles_time = Article.order(id: "DESC")
  end
end
