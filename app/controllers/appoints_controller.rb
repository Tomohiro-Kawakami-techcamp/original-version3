class AppointsController < ApplicationController
  def index
    if current_user.id == 1
      @appoints = Appoint.all
    else
      @appoints = Appoint.where(user_id: current_user.id)
    end
  end
end