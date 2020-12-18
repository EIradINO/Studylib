class PagesController < ApplicationController
  def index
  end

  def show
  end

  def articles
    @articles = Article.all
  end
end
