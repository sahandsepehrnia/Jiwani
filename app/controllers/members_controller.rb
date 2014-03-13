class MembersController < ApplicationController
  def new
  end

  def index
	@member_list = Member.all
  end

  def show
  	@member = Member.find_by(:id => params[:member_id])	
  end

  def create
  member = Member.new
  member.first_name = params["first_name"]
  member.last_name = params["last_name"]
  member.company = params["company"]
  member.location = params["location"]
  member.password = params["password"]
  member.save
  redirect_to "/login", notice: "Thank you for registering!  Please login below"
  end

    # @member = Member.find_by(:id => params[:member_id])
    # if @member.id != session[:member_id]
    #   redirect_to root_url, notice: "Nice try"
  end



