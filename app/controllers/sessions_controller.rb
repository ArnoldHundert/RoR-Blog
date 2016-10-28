class SessionsController < ApplicationController

    def index #
    end

    def new #
    end

    def create
      session[:current_user_id] = @user.id
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
