class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @articles = Article.where(user_id: @user.id).page(params[:page]).per(5)
  end
end
