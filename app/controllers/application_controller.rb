class ApplicationController < ActionController::Base
    before_action :set_current_user
    
    def set_current_user
        #home画面にアクセスしようとしたとき、ログイン済みか確認
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
        else
            Current.user = nil
        end
    end
end
