class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]

  def index
    session[:action] = 'index'
    @articles = Article.most_recent
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def show
    @article = Article.friendly.find(params[:id])
  end

  def edit
    @article = Article.friendly.find(params[:id])
  end

  def update
    @article = Article.friendly.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article = Article.friendly.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :status, :banner_photo_url)
  end
end
