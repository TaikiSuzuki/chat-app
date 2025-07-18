class RoomsController < ApplicationController

  def index
  end

  def new
    @room = Room.new
  end

  def create
    # binding.pry ※削除しておｋ
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end
end
