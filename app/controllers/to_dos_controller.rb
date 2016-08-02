class ToDosController < ApplicationController

  def index
    @all = ToDo.all
  end

  def show
    @task = ToDo.find(params[:id])
  end

  def new

  end

  def create
    @task = ToDo.new(task_params)
    @task.save
    redirect_to detail_path(@task)
  end

  def edit
    @task = ToDo.find(params[:id])
  end

  def update
    @task = ToDo.find(params[:id])
    @task.update(task_params)
    @task.save
    redirect_to detail_path(@task)
  end

  def destroy
    @task = ToDo.find(params[:id])
    @task.destroy
    redirect_to index_path
  end


  private

    def task_params
      params.require(:task).permit(:name, :description)
    end


end


