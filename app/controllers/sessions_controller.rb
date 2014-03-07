class SessionsController < ApplicationController
  def new
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "Thank you. You have signed out."
  end

  def create
      # member =

      if Member.find_by(:first_name => params[:fname])
        redirect_to "/products"
      end

      # if member.present?
      #     if member.password == params[:pwd]
      #       session[:member_id] = member.id
      #       redirect_to root_url, color: white, notice: "Welcome to Jiwani!"
      #     else
      #       redirect_to root_url, notice: "Your password is incorrect. Please try your password again."
      #     end
      # else
      #   redirect_to root_url, notice: "Sorry that user name does not exist."
      # end
  end
end
