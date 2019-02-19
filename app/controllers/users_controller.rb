class UsersController < ApplicationController
 before_filter :authenticate_user!
  def show
    @user = User.find(params[:id])
    # Rails does the magic.
  end

  # GET /users
  def index
    @users = User.all
  end

  def sign_in
   
  end

end