class ArticlesController < ApplicationController

  before_filter :authenticate_user!, except: [:show, :index]
  before_filter :find_user,          only:   [:index, :create, :update, :edit, :destroy, :show]

  def new
    @article = Article.new
  end

  def update
    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
 
  def edit
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
 
    redirect_to articles_path
  end

  def index
    @articles = @user.articles
  end

  def show
    @article = Article.find(params[:id])
  end

  def create

    @article = @user.articles.create(article_params)

    if @article.save
	    redirect_to @article
    else
	    render 'new'
    end
  end

  private

    def find_user
      @user = User.where(id: current_user.id).first
      @article = @user.articles.where(id: params[:id]).first
    end

    def article_params
      params.require(:article).permit(:title, :text)
    end

end
