class UsersController < ApplicationController
  before_action :authenticate_user!
  attr_accessor :name
  def show
    @user = User.find(params[:id])
    # Rails does the magic.
  end

  # GET /users
  def index
    @users = User.all
  end

  def user
    @user = current_user.id
  end

end