class CommentsController < ApplicationController
	http_basic_authenticate_with name: "abhi", password: "21897", only: :destroy
	def create
	    @article = Article.find(params[:article_id])
	    @comment = @article.comments.create(comment_params)
	    @like= @comment.like.create(like_params)
	    redirect_to article_path(@article)
  	end

  	def destroy
	    @article = Article.find(params[:article_id])
	    @comment = @article.comments.find(params[:id])
	    @comment.destroy
	    redirect_to article_path(@article)
	end
 
  	private
	    def comment_params
	      params.require(:comment).permit(:commenter, :body)
	    end

	    def like_params
	    	params.require(:like).permit(:rating)
	    end
end
