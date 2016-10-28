class CommentsController < ApplicationController

  def index #
    @title = "Comments"
    @message = "This is a list of all comments."
    # @comments = comment.all
  end

  def new #
    @message = "This is the form for a new comment."
  end

  def create
    # This action receives data from #new and creates a new comment.

    # puts "PARAMS:"
    # puts params["comment"]["firstname"]
    # puts params["comment"]["lastname"]

    # .create returns the obj that was just created
    # @new_comment = Comment.create(firstname: params["comment"]["firstname"], lastname: params["comment"]["lastname"])

    # check if .create did its job
    # if @new_comment
    #   puts "SUCCESS"
    #   redirect_to url_for(:controller => :comments, :action => :index)
    # else
    #   puts "ERROR!!"
    #   redirect_to url_for(:controller => :comments, :action => :new)
    # end
  end

  def show #
    # @comment = Comment.find(params[:id])
    # @message = "This route shows all info for an individual comment named: #{@comment.firstname} #{@comment.lastname}."
    @message = "This route shows all info for an individual comment."
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
