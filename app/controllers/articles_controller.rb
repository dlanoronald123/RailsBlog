class ArticlesController < ApplicationController
    
    def index
        @articles = ArticleSample.all
    end

    def show
        @article = ArticleSample.find(params[:id])
    end

    def new
        @article = ArticleSample.new
    end

    def create
        @article = ArticleSample.new(article_params)
        if @article.save
           redirect_to articles_path
        else
            render :new
        end
    end

    def edit
        @article = ArticleSample.find(params[:id])
    end

    def update
        @article = ArticleSample.find(params[:id])
        if @article.update(article_params)
            redirect_to articles_path
        else
            render :edit
        end  
    end
    
    def destroy
        @article = ArticleSample.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end
    
    private
  
    def article_params
        params.require(:article).permit(:name, :body, :age)
    end

  
end
