class MsgboardController < ApplicationController
  
  def index
  @msgboard_list = Msgboard.all
  end

  def show
  # @message = Msgboard.find_by(id: => params[:msgboard_id])	
  end

 def destroy
    message = Msgboard.find_by(:id => params[:msgboard_id])
    message.destroy
    redirect_to "/msgboard", notice: "Your message has been deleted"
 end

  def new
  end	

  def create
  message = Msgboard.new
  message.title = params["title"]
  message.message = params["message"]
  message.date = params["date"]
  message.save
  redirect_to "/msgboard"
  end

end
