class CommentsController < ApplicationController

	def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create
        @comment.body = params[:comment]["body"]
        
        respond_to do |format|
            @comment.save
            format.html { redirect_to @article } 
            format.js 
        end

    end

    # def show
    #     @article = Article.find(params[:article_id])
    # end
    
    def edit
        @comment = Comment.find(params[:id])
    end

    def update
        @article = Article.find(params[:article_id])
      @comment = Comment.find(params[:id])
       @comment.body = params[:comment]["body"]
        @comment.save
        redirect_to @article
      
    end


    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        #@article = Article.find(params[:article_id])
        
        respond_to do |format|
         #format.html { redirect_to article_path(@article.id)}
         format.js 
        end

      end


end
