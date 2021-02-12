class AllappointsController < ApplicationController
  def index
    @appoints = Appoint.where(user_id: current_user.id)
  end
end
