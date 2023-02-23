class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  # See all tasks
  def index
    @tasks = Task.all
  end

  # Add/create a new task
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  # See one specific task
  def show; end

  # Edit specific task

  def edit; end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  # Delete/destroy specific task
  def destroy
    @task.destroy
    redirect_to task_path
    # , status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
