class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(params.require(:article).permit(:title, :content))
    redirect_to article_path(@article.id)
  end
end
