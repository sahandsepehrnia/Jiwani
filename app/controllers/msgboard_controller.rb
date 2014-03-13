class MsgboardController < ApplicationController
  
  def index
  @msgboard_list = Msgboard.all
  member = Member.find_by(:first_name => params[:name])
  if member.present?
  # if member.password == params[:pwd]
     session[:name] = member.first_name
  redirect_to "/msgboard/show"
else
  redirect_to root_url, notice: "Sorry, this page is for members only.  Please Sign up!"
  end
end
# end 



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
