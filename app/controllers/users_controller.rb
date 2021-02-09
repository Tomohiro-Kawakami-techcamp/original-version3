class UsersController < ApplicationController
  before_action :authenticate_user!,  only: [:show]

  def show
    if params[:id].to_i == current_user.id
      @user = User.find(params[:id])
    else
      redirect_to root_path
    end
  end
end
