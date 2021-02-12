class AppointsController < ApplicationController
  def index
    @task = Task.find(params[:task_id])
  end

  def create
   @appoint = Appoint.create(user_id: current_user.id, task_id: params[:task_id])
   if @appoint.save
    redirect_to  root_path
   else
    render :index
   end
  end
end