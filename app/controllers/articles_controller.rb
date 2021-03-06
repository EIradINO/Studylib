class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles/1
  # GET /articles/1.json
  def show
    @user = User.find(@article.user_id)
    @rooms = Article.find(params[:id]).rooms
    @containers = Article.find(params[:id]).containers
    @room = Room.new
    @article = Article.find(params[:id])
    $article_id = Article.find(params[:id]).id
  end

  # GET /articles/new
  def new
    @article = Article.new
    @article.containers.build
  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
    unless current_user.id == @article.user_id
      redirect_to root_path
      flash[:notice] = "アクセスできません"
    end
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)
    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: '記事の投稿が完了しました' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(update_article_params)
        format.html { redirect_to @article, notice: '記事を更新しました' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: '記事を削除しました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :subject, :field, containers_attributes: [:content, :artip]).merge(user_id: current_user.id)
    end

    def update_article_params
      params.require(:article).permit(:title, :subject, :field, containers_attributes: [:content, :artip, :_destroy, :id]).merge(user_id: current_user.id)
    end

    def redirect_root
      redirect_to root_path unless user_signed_in?
    end
end
