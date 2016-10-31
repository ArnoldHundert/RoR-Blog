class UsersController < ApplicationController

  def index #
    @title = "Users"
    @users = User.all
    @message = "Existing User Login"
    current_user = User.find_by(session[:current_user_id])
  end

  def new #
    @user = User.new
    @message = "New User Registration"
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to posts_path
    # This action receives data from #new and creates a new user.

    # puts "PARAMS:"
    # puts params["user"]["fname"]
    # puts params["user"]["lname"]

    # .create returns the obj that was just created
    # @new_user = user.create(firstname: params["user"]["firstname"], lastname: params["user"]["lastname"])

    # check if .create did its job
    # if @new_user
    #   puts "SUCCESS"
    #   redirect_to url_for(:controller => :users, :action => :index)
    # else
    #   puts "ERROR!!"
    #   redirect_to url_for(:controller => :users, :action => :new)
    # end
  end

  def show #
    # @user = User.find(params[:id])
    # @message = "This route shows all info for an individual user named: #{@user.firstname} #{@user.lastname}."
  end

  def edit #
    # Must have 'shortcuts' in routes for this to work
    # @user = User.find(params[:id])
  end

  def update
    # @user = User.find(params[:id])
    # @user.update({firstname: params[:user][:firstname], lastname: params[:user][:lastname]})
    #
    # if (@user)
    #   redirect_to url_for(:controller => :users, :action => :index)
    # else
    #   redirect_to url_for(:controller => :users, :action => :edit)
    # end
  end

  def destroy
    # User.delete(params[:id])
    # redirect_to url_for(:controller => :users, :action => :index)
  end

  private
  def user_params
     params.require(:user).permit(:fname, :lname, :email, :username, :password)
  end
end
