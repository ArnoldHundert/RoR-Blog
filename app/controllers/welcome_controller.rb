class WelcomeController < ApplicationController

    def index
      @title = "Login"
      # @message = "Welcome to our Home Page."
      @message1 = "In order to continue you must"
      @message2 = "either login or register."
    end

    def about_us
      @title = "About Us"
      @message = "Welcome to the About Us Page."
    end

end
