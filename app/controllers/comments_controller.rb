class CommentsController < ApplicationController
before_action :authenticate_user!
	def create
		@post = Post.find(params[:post_id])
		@comments = @post.comments.create(comment_params)
		redirect_to post_path(@post)
	end 
	
	def destroy
		@post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

	private def comment_params
		params.require(:comment).permit(:username, :body)
	end
end
