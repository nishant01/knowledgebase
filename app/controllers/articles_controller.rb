class ArticlesController < ApplicationController


  def index
    @article = Article.all

    respond_to do |format|
      format.html
      format.json {render json: @article}
    end
  end

  def new
    @article = Article.new

    respond_to do |format|
      format.html
      format.json {render json :@article}
    end
  end

  def create
    @article = Article.new(params[:category])

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render json: @article, status: :created, location: @article }
      else
        format.html { render action: "new" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

end
