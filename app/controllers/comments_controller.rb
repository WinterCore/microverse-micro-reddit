class CommentsController < ApplicationController
  before_action :set_post, only: %i[create destroy]
  before_action :authenticate_user!, only: %i[create destroy]
  before_action :set_comment, only: [:destroy]
  before_action :authorize_delete, only: [:destroy]

  def create
    @comment = current_user.comments.new(comment_params.merge(post_id: @post.id))
    if @comment.save
      flash[:notice] = 'Comment created successfully'
      redirect_to post_path(@post)
    else
      render 'posts/show'
    end
  end

  def destroy
    Comment.find(params[:id]).destroy
    flash[:notice] = 'Comment deleted successfully!'
    redirect_to post_path(@post)
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end

  def authorize_delete
    return if current_user.id == @comment.user_id

    flash[:notice] = "You're not allowed to delete this comment"
    redirect_to post_path(@post)
  end
end
