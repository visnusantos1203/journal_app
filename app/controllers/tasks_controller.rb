class TasksController < ApplicationController
  before_action :get_category

  def index
    @tasks = @category.tasks
  end

  def new 
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    @task.category_id = params[:id]
    if @task.save
      redirect_to category_tasks_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to categories_path
    else
      render :edit
    end

  end

  def destroy
    @task = Task.find(params[:id])
    @task.delete
    @task.save

    redirect_to category_tasks_path
  end

  private

  def get_category
    @category = Category.find(params[:category_id])
  end

  def task_params
    params.require(:task).permit(:body)
  end
end
