class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_notes = @user.notes
    @user_profile = @user.profile
    @user_profile_picture = @user.picture
  end

  def current_user
      @current_user ||= User.find_by(id: session[:user_id])
   end


end
