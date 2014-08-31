class BiorainsController < ApplicationController
  before_action :set_biorain, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @biorains = Biorain.all
  end

  def show
  end

  def new
    @biorain = current_user.biorains.build
  end

  def edit
  end

  def create
    @biorain = current_user.biorains.build(biorain_params)
    if @biorain.save
      redirect_to @biorain, notice: 'Biorain was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @biorain.update(biorain_params)
      redirect_to @biorain, notice: 'Biorain was successfully updated.'
    else
      render action: 'edit'
    end
  end

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

    def correct_user
      @biorain = current_user.biorains.find_by(id: params[:id])
      redirect_to biorains_path, notice: "Not authorized to edit this biorain" if @biorain.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def biorain_params
      params.require(:biorain).permit(:description, :image)
    end
end
