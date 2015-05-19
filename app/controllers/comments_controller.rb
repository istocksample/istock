class CommentsController < ApplicationController

	def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create!(params[:comments])
        redirect_to @article
    end
end
