class MembersController < ApplicationController
  def new
  end

  def show
    @member = Member.find_by(:id => params[:member_id])
    if @member.id != session[:member_id]
      redirect_to root_url, notice: "Nice try"
    end
  end
end
