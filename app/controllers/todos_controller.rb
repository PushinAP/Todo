class TodosController < ApplicationController
  def index
    @projects = Project.all
  	@todo = Todo.new
  end

  def update
    @todo = Todo.find(params[:id])
  
    if @todo.isComplited == false
      @todo.update(:isComplited => true)
    else
      @todo.update(:isComplited => false)
    end

    redirect_to root_path
  end

  def create
  	@todo = Todo.new tasks_params
  	@todo.save

  	redirect_to root_path
  end

  private

  def tasks_params
  	params.require(:/).permit([:text, :project_id, :id, :isComplited])
  end
end
