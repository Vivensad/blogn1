class CommentsController < ApplicationController
	
	def create
		@post = Post.find(params[:post_id])
		@comments = @post.comments.create(comment_params)
		redirect_to post_path(@post)
	end 
	
	def destroy
    @comment = Comment.find(params[:id])

    @comment.destroy
    redirect_to posts_path
  end

	private def comment_params
		params.require(:comment).permit(:username, :body)
	end
end
