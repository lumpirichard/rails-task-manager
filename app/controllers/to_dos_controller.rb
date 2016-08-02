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
    redirect_to detail_path
  end

  def edit

  end

  def update

  end


  private

    def task_params
      params.require(:task).permit(:name, :description)
    end


end


