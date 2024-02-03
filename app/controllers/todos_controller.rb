class TodosController < ApplicationController
    def index
      @todos = Todo.all
    end
      
    def addTodo
      todo = Todo.new(
        text: params[:text],
        user_id: Current.user.id)
      todo.save
      redirect_to root_path
      #redirect_to '/todos/todoPage' 
    end
      
    def deleteTodo
      todo = Todo.find(params[:id])
      todo.destroy
      redirect_to root_path
    end
      
    private
      def todo_params
        text = params.permit(:text)
      end
   end
