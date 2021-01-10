class PagesController < ApplicationController
  def index
    articles_default = Article.order(id: "DESC").includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}
    @articles_default = Kaminari.paginate_array(articles_default).page(params[:page]).per(5)
    @articles_time = Article.order(id: "DESC")
  end

  def about

  end

  def arlikes
    @arlikes = Arlike.where(user_id: current_user.id).page(params[:page]).per(5)
  end

  def tiplikes
    @tiplikes = Tiplike.where(user_id: current_user.id)
  end

  def liketips
    @liketips = Liketip.where(user_id: current_user.id)
  end

  def artimeline

  end

  def timeline
    tips_default = Tip.order(id: "DESC").includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}
    @tips_default = Kaminari.paginate_array(tips_default).page(params[:page]).per(5)
    @tips_time = Tip.order(id: "DESC")
  end
end
