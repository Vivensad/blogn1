class CommentsController < ApplicationController
	#http_basic_authenticate_with name: "admin", password: "pepega"
	def create
		@post = Post.find(params[:post_id])
		@comments = @post.comments.create(comment_params)
		redirect_to post_path(@post)
	end 

	private def comment_params
		params.require(:comment).permit(:username, :body)
	end
end
