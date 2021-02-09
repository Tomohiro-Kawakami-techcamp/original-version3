class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update, :show, :destroy]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to  tasks_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to  task_path
    else
      render :edit
    end
  end

  def destroy
    if user_signed_in? && current_user.id == 1
      @task.destroy
      redirect_to  tasks_path
    else
      render :edit
    end
  end

  private
  def task_params
    params.require(:task).permit(:name, :info, :event_date).merge(user_id: current_user.id)
  end

  def set_task
   @task = Task.find(params[:id])
  end
end