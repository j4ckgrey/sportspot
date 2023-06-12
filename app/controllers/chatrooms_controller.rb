class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
    @chatrooms = policy_scope(Chatroom)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    authorize @chatroom
  end

  def new
    @chatroom = Chatroom.new
    @club = Club.find(params[:club_id])
    authorize @chatroom
  end

  def create
    @creator = current_user
    @club_owner = Club.find(params[:club_id]).user
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.creator = @creator
    @chatroom.club_owner = @club_owner
    authorize @chatroom
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @chatroom = Chatroom.find(params[:id])
    @chatroom.destroy
    authorize @chatroom
    redirect_to chatrooms_path, status: :see_other
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
