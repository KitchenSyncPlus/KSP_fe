class SessionsController < ApplicationController
    def create
        auth_hash = request.env['omniauth.auth']
        google_id = auth_hash['uid']
        email = auth_has['info']['email']
        token = auth_hash['credentials']['token']
        binding.pry
    end
end