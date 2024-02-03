class MainController < ApplicationController
    def index
        if session[:user_id]
	    # findの場合はユーザを存在しないとエラーを返すのでfind_byを使う
            @user = User.find_by(id: session[:user_id])
            @todos = Todo.where(user_id: @user.id) #user.user_id
        end
    end
end
