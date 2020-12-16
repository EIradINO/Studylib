class RoomsController < ApplicationController
  def index
    @rooms = Room.all.order(:id)
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to @room
    else
      redirect_to root_path
    end
  end

  private

    def room_params
      params.require(:room).permit(:title).merge(article_id: $article_id, user_id: current_user.id)
    end
end
