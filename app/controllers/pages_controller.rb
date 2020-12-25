class PagesController < ApplicationController
  def index
  end

  def show
  end

  def arlikes
    @arlikes = Arlike.where(user_id: current_user.id)
  end

  def tiplikes
    @tiplikes = Tiplike.where(user_id: current_user.id)
  end
end
