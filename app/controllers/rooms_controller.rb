class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def create
    @room = Room.new
    @room.save
    redirect_to rooms_path
  end

  def show
    @room = Room.find(params[:id])
    @message = @room.messages.recent.limit(5).reverse
  end
end
