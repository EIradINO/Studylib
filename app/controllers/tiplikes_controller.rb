class TiplikesController < ApplicationController
  before_action :artip_params
  def create
    Tiplike.create(user_id: current_user.id, artip_id: params[:id])
    # redirect_to artip_path
  end

  def destroy
    Tiplike.find_by(user_id: current_user.id, artip_id: params[:id]).destroy
    # redirect_to artip_path
  end

  private

  def artip_params
    @artip = Artip.find(params[:id])
  end
end
