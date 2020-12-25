class PagesController < ApplicationController
  before_action :set_user, only: [:show]
  def index
  end

  def show
  end

  def articles
    @articles = Article.all
  end

  private

  def set_user
    @user = User.find([:id])
  end
end
