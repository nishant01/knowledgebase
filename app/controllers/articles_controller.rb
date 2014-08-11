class ArticlesController < ApplicationController


  def index
    @articles = Article.where(:is_approved => 1)

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
    @article = Article.new(params[:article])
    @article.user_id = current_user.id
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

  def pending_article
    users  = User.select(:id).where(:department_id => current_user.department_id)

    users.each do |user|
      @articles = user.articles.where(:is_approved => 0)
    end

    render :layout => "admin"
  end



end
