class PostsController < ApplicationController

  def index #
    @title = "Posts"
    @message = "This is a list of all posts."
    # @abcd = "* * *" + " Avatar " + "* * *"
    @posts = Post.all.order(created_at: :desc)
  end

  def new #
    @message = "This is the form for a new post."
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to posts_path
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

private
  def post_params
    params.require(:post).permit(:post_text, :which_movie, :user_id)
  end
end
