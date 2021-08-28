class TasksController < ApplicationController
  before_action :get_category

  def index
    @tasks = @category.tasks
  end

  def new 
    @task = Task.new
  end

  def create
    @task = @category.task.new(task_params)

    if @task.save
      redirect_to category_tasks_path
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end
  private

  def get_category
    @category = Category.find(params[:category_id])
  end

  def task_params
    params.require(:task).permit(:body)
  end
end
