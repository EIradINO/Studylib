class PagesController < ApplicationController
  def index
  end

  def show
  end

  def articles
    @articles = Article.all
  end

  def tips
    @tips = Tip.all
  end
end
