class TodosController < ApplicationController
  def index
  	@projects = Project.all
  	@todo = Todo.new
  end

  def update
  end

  def create
  	@todo = Todo.new tasks_params
  	@todo.save

  	redirect_to root_path
  end

  private

  def tasks_params
  	params.require(:todo).permit([:text, :project_id])
  end
end
