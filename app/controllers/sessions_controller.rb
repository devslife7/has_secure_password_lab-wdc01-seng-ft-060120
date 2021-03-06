class SessionsController < ApplicationController

    def login
        @user = User.new
    end
    
    def create
        @user = User.find_by(name: params[:user][:name]) 
        if @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to users_homepage_path
        end
    end
end
