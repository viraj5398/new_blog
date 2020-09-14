class ArticlesController < ApplicationController
  #before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
  end


  def new
    @article = Article.new
  end


  def create

    @article = Article.new(article_params)
    if @article.save
      redirect_to @post
    else
      render 'new'
    end

  end

  def show

    @post = Article.find(params[:id])
  end
  
  private
  
  def article_params
    params.require(:article).permit(:title, :body, :user_id_id)
  end
end
