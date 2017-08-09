class TasksController < ApplicationController

before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(tasks_params)
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @task.update(tasks_params)
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def tasks_params
      params.require(:task).permit(:name, :status, :content)
  end

  def set_task
      @task = Task.find(params[:id])
  end
end
