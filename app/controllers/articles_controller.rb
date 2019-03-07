class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    
  end

  def create
    @article = Article.new(params.require(:article).permit(:author, :title, :body, :picture))
    @article.save
    redirect_to @article
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path  
  end
end
