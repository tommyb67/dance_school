class BiorainsController < ApplicationController
  before_action :set_biorain, only: [:show, :edit, :update, :destroy]

  # GET /biorains
  # GET /biorains.json
  def index
    @biorains = Biorain.all
  end

  # GET /biorains/1
  # GET /biorains/1.json
  def show
  end

  # GET /biorains/new
  def new
    @biorain = Biorain.new
  end

  # GET /biorains/1/edit
  def edit
  end

  # POST /biorains
  # POST /biorains.json
  def create
    @biorain = Biorain.new(biorain_params)

    respond_to do |format|
      if @biorain.save
        format.html { redirect_to @biorain, notice: 'Biorain was successfully created.' }
        format.json { render action: 'show', status: :created, location: @biorain }
      else
        format.html { render action: 'new' }
        format.json { render json: @biorain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biorains/1
  # PATCH/PUT /biorains/1.json
  def update
    respond_to do |format|
      if @biorain.update(biorain_params)
        format.html { redirect_to @biorain, notice: 'Biorain was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @biorain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biorains/1
  # DELETE /biorains/1.json
  def destroy
    @biorain.destroy
    respond_to do |format|
      format.html { redirect_to biorains_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biorain
      @biorain = Biorain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def biorain_params
      params.require(:biorain).permit(:description)
    end
end
