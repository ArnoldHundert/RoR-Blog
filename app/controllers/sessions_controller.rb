class SessionsController < ApplicationController

    def index #
      
    end

    def new
      @title = "Login"
      @message = "Existing User Login"
    end

    def create
      session[:user_id] = User.where(username: params[:session][:username]).first.id
      p session[:user_id]
      redirect_to posts_path
    end

    def show #

    end

    def edit #
    end

    def update
    end

    def destroy
    end

end
