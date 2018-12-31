class ArticlesController < ApplicationController
  before_action :find_article, only: [:edit, :update, :show, :destroy]

  def new
    @article = Article.new
  end

  def create
    #render plain: params[:article].inspect
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was successfully created"
      redirect_to article_path(@article)
    else
      render "new"
    end
  end

  def show
    find_article
  end

  def edit
    find_article
  end

  def update
    find_article
    if @article.update(article_params)
      flash[:notice] = "Article was updated"
      redirect_to article_path(@article)
    else
      flash[:notice] = "Article was not updated"
      render "edit"
    end
  end

  def index
    @articles = Article.all
  end

  def destroy
    find_article
    @article.destroy
    flash[:notice] = "Article was deleted"
    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end

    def find_article
      @article = Article.find(params[:id])
    end
end