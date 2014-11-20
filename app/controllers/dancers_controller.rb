class DancersController < ApplicationController
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
  end

  def show
  end

  def new
    @dancer = current_user.dancers.build
  end

  def create
     @dancer = current_user.dancers.build(dancer_params)
    if @dancer.save
      redirect_to @dancer, notice: 'Dancer was successfully registered.'
    else
      render action: 'new'
    end

     if @dancer.update(dancer_params)
      redirect_to @dancer, notice: 'Dancer was successfully updated.'
    else
      render action: 'edit'
    end
  end

  private

  def dancer_params
      params.require(:first_name, :last_name, :gender, :birthdate).permit(:email)
    end

end