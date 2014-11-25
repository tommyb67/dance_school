class DancersController < ApplicationController
  before_action :set_dancer, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @dancers = Dancer.all.order("created_at DESC")
  end

  def show
  end

  def new
    @dancer = Dancer.new
  end

  def create
     @dancer = Dancer.new(dancer_params)
    if current_user.admin? && @dancer.save
      redirect_to @dancer, notice: 'Dancer was successfully registered.'
    else
      render action: 'new'
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_dancer
      @dancer = Dancer.find(params[:id])
    end

    def correct_user
      @dancer = current_user.dancers.find_by(id: params[:id])
      redirect_to dancers_path, notice: "Not authorized to edit this dancer" if @dancer.nil?
    end

  def dancer_params
      params.require(:dancer).permit(:first_name, :last_name, :gender, :birthdate, :user_id)
    end

end