class TodosController < ApplicationController
    def index
      @todos = Todo.all
    end
      
    def addTodo
      print "test"
      todo = Todo.new(todo_params)
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
        params.permit(:text)
      end
   end
