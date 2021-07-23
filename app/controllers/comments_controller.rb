class CommentsController < ApplicationController
  http_basic_authenticate_with name: 'admin', password: 'admin',
                               only: :destroy

  def create
    @article = Article.friendly.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.friendly.find(params[:article_id])
    @comment = @article.comments.friendly.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :body, :status)
  end
end
