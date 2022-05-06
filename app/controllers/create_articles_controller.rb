class CreateArticlesController < ApplicationController
  before_action :set_create_article, only: %i[ show edit update destroy ]

  # GET /create_articles or /create_articles.json
  def index
    @create_articles = CreateArticle.all
  end

  # GET /create_articles/1 or /create_articles/1.json
  def show
  end

  # GET /create_articles/new
  def new
    @create_article = CreateArticle.new
  end

  # GET /create_articles/1/edit
  def edit
  end

  # POST /create_articles or /create_articles.json
  def create
    @create_article = CreateArticle.new(create_article_params)

    respond_to do |format|
      if @create_article.save
        format.html { redirect_to create_article_url(@create_article), notice: "Create article was successfully created." }
        format.json { render :show, status: :created, location: @create_article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @create_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_articles/1 or /create_articles/1.json
  def update
    respond_to do |format|
      if @create_article.update(create_article_params)
        format.html { redirect_to create_article_url(@create_article), notice: "Create article was successfully updated." }
        format.json { render :show, status: :ok, location: @create_article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @create_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_articles/1 or /create_articles/1.json
  def destroy
    @create_article.destroy

    respond_to do |format|
      format.html { redirect_to create_articles_url, notice: "Create article was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_article
      @create_article = CreateArticle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def create_article_params
      params.require(:create_article).permit(:title, :description)
    end
end
