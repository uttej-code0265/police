class ArticlesController < ApplicationController
    def show
        @article=Article.find(params[:id])
    end

    def index
        @articles= Article.all
    end

    def new

    end

    def create
        @article=Article.new(params.require(:article).permit(:cr_no,:sec_law,:acc_name))
        @article.save
        redirect_to @article
    end
end
