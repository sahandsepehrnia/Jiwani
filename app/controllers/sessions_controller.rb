class SessionsController < ApplicationController
  def new
    params[:name]
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "Thank you. You have signed out."
  end

  def create
      member = Member.find_by(:first_name => params[:name])
      if member.present?
          if member.password == params[:pwd]
            session[:name] = member.first_name
            redirect_to root_url, notice: "Welcome to Bespoke2Bespoke #{member.first_name}!"
          else
            redirect_to root_url, notice: "Your password is incorrect. Please try your password again."
          end
      else
        redirect_to "/login", notice: "Sorry that user name does not exist."
      end
  end
end



