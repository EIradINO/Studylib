class ArtipsController < ApplicationController
  before_action :set_artip, only: [:show, :edit, :update, :destroy]

  # GET /artips
  # GET /artips.json
  def index
    @artips = Artip.all
  end

  # GET /artips/1
  # GET /artips/1.json
  def show
  end

  # GET /artips/new
  def new
    @artip = Artip.new
  end

  # GET /artips/1/edit
  def edit
  end

  # POST /artips
  # POST /artips.json
  def create
    @artip = Artip.new(artip_params)

    respond_to do |format|
      if @artip.save
        format.html { redirect_to @artip, notice: 'Artip was successfully created.' }
        format.json { render :show, status: :created, location: @artip }
      else
        format.html { render :new }
        format.json { render json: @artip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artips/1
  # PATCH/PUT /artips/1.json
  def update
    respond_to do |format|
      if @artip.update(artip_params)
        format.html { redirect_to @artip, notice: 'Artip was successfully updated.' }
        format.json { render :show, status: :ok, location: @artip }
      else
        format.html { render :edit }
        format.json { render json: @artip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artips/1
  # DELETE /artips/1.json
  def destroy
    @artip.destroy
    respond_to do |format|
      format.html { redirect_to artips_url, notice: 'Artip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artip
      @artip = Artip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artip_params
      params.require(:artip).permit(:content).merge(article_id: 2)
    end
end
