class PostsController < ApplicationController

  def index #
    @title = "Posts"
    @message = "This is a list of all posts."
    @edgeLeft = " * * *"
    @edgeRight = "* * *  "
    @movieTitle = "Avatar"
    # @posts = posts.all
  end

  def new #
    @message = "This is the form for a new post."
  end

  def create
    # This action receives data from #new and creates a new post.

    # puts "PARAMS:"
    # puts params["post"]["firstname"]
    # puts params["post"]["lastname"]

    # .create returns the obj that was just created
    # @new_post = post.create(firstname: params["post"]["firstname"], lastname: params["post"]["lastname"])

    # check if .create did its job
    # if @new_post
    #   puts "SUCCESS"
    #   redirect_to url_for(:controller => :posts, :action => :index)
    # else
    #   puts "ERROR!!"
    #   redirect_to url_for(:controller => :posts, :action => :new)
    # end
  end

  def show #
    # @post = Post.find(params[:id])
    # @message = "This route shows all info for an individual post named: #{@post.firstname} #{@post.lastname}."
    @message = "This route shows all info for an individual post."
  end

  def edit #
    # Must have 'shortcuts' in routes for this to work
    @message = "This is the form to edit an existing post."
    # @post = Post.find(params[:id])
  end

  def update
    # @post = Post.find(params[:id])
    # @post.update({firstname: params[:post][:firstname], lastname: params[:post][:lastname]})
    #
    # if (@post)
    #   redirect_to url_for(:controller => :posts, :action => :index)
    # else
    #   redirect_to url_for(:controller => :posts, :action => :edit)
    # end
  end

  def destroy
    # Post.delete(params[:id])
    # redirect_to url_for(:controller => :posts, :action => :index)
  end

end
