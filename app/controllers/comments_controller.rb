class CommentsController < ApplicationController

	def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create
        @comment.body = params[:comment]["body"]
        @comment.save
        redirect_to @article
    end

    def edit
    	@comment = Comment.find(params[:id])    	
    end


    def destroy_comment
	    @comment = Comment.find(params[:id])	   
	    @comment.destroy
	    redirect_to article_path    
	  end

end
