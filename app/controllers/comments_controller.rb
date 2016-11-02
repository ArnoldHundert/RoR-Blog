class CommentsController < ApplicationController

  def index #
    @title = "Comments"
    @message = "This is all of this post's comments."
    # @comments = Comment.where([params][:post_id])
  end

  def new #
    @message = "This is the form for a new comment."
  end

  def create
    # This action receives data from #new and creates a new comment.

  end

  def show #
    @message = "This route shows all info for an individual comment."
    # @message = "This route shows all info for an individual comment named: #{@comment.firstname} #{@comment.lastname}."
    @comment = Comment.find(params[:post_id])
  end

  def edit #
    # Must have 'shortcuts' in routes for this to work
    @message = "This is the form to edit an existing comment."
    # @comment = Comment.find(params[:id])
  end

  def update
    # @comment = Comment.find(params[:id])
    # @comment.update({firstname: params[:comment][:firstname], lastname: params[:comment][:lastname]})
    #
    # if (@comment)
    #   redirect_to url_for(:controller => :comments, :action => :index)
    # else
    #   redirect_to url_for(:controller => :comments, :action => :edit)
    # end
  end

  def destroy
    # Comment.delete(params[:id])
    # redirect_to url_for(:controller => :comments, :action => :index)
  end

end
