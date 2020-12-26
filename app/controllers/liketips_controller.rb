class LiketipsController < ApplicationController
  before_action :tip_params
  def create
    Liketip.create(user_id: current_user.id, tip_id: params[:id])
    # redirect_to tip_path
  end

  def destroy
    Liketip.find_by(user_id: current_user.id, tip_id: params[:id]).destroy
    # redirect_to tip_path
  end

  private

    def tip_params
      @tip = Tip.find(params[:id])
    end
end
