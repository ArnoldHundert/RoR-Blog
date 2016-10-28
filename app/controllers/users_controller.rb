class UsersController < ApplicationController

  def index #
    @title = "Users"
    @message = "This is a list of all users."
    # @users = users.all
  end

  def new #
    @message = "This is the form for a new user."
  end

  def create
    # This action receives data from #new and creates a new user.

    # puts "PARAMS:"
    # puts params["user"]["firstname"]
    # puts params["user"]["lastname"]

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
    @message = "This route shows all info for an individual user."
  end

  def edit #
    # Must have 'shortcuts' in routes for this to work
    @message = "This is the form to edit an existing user."
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

end
