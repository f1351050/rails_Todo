class SignupController < ApplicationController
    def new
        @user = User.new
    end

     def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            flash[:success] = "アカウトを作成しました。"
            redirect_to root_path
        else
            flash.now[:error] = "アカウントの作成に失敗しました。"
            render :new
        end
    end

    private
    def user_params
        params.require(:user).permit(:user_name, :email, :password, :password_confirmation)
    end
end
