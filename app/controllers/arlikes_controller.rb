class ArlikesController < ApplicationController
  before_action :article_params

  def create
    Arlike.create(user_id: current_user.id, article_id: params[:id])
  end

  def destroy
    Arlike.find_by(user_id: current_user.id, article_id: params[:id]).destroy
  end

  private

    def article_params
      @article = Article.find(params[:id])
    end
end
