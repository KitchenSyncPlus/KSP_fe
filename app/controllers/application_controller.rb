class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    helper_method :current_user

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def authorize
        if !current_user
            flash[:alert] = "Sign in to visit that page"
            redirect_to root_path
        end
    end
end
