class ArticlesController < ApplicationController
    def show
        @article=Article.find(params[:id])
    end

    def index
        @articles= Article.all
        @count=0
        @disp_count=0
    end

    def new
        @article=Article.new
    end

    def edit
        @article=Article.find(params[:id])
    end

    def create
        @article=Article.new(params.require(:article).permit(:cr_no,:sec_law,:acc_name))
        @article.save
        redirect_to @article
    end

    def update
        @article=Article.find(params[:id])
        @article.update(params.require(:article).permit(:cr_no,:sec_law,:acc_name))
        redirect_to @article
    end

    def destroy
        @article=Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end

    def disposal
        @article=Article.find(params[:id])
         @article.disp=true
         @article.save!
         @articles=Article.all
    end
    

    def disp_destroy
        @article=Article.find(params[:id])
        @article.disp=false
        @article.save!
        redirect_to articles_path
    end
end
