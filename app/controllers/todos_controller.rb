class TodosController < ApplicationController
    
  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      render status: 200
    end
      


  end

  private
    def todo_params
      params.permit(:todo).require(:task)
    end

end
