class CommentsController < ApplicationController
before_action :authenticate_user!
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.new(comment_params)
		@comments = @post.comments
		if @comment.save
			redirect_to post_path(@post)			
		else
			render 'posts/show'
		end
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
