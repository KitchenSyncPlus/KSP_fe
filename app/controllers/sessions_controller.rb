class SessionsController < ApplicationController
    def create
        user = User.find_or_create_by(email: user_params[email])
        user.update(user_params)
        session[:user_id] = user.id
        redirect_to root_path
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path
    end

    private

    def auth_hash
        request.env['omniauth.auth']
    end

    def user_params
        # will need to add token for auth and uid
        {
        email = auth_hash['info']['email'],
        name = auth_hash['info']['name']
        }
    end
end