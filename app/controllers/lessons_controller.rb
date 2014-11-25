class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @lessons = Lesson.all.order("created_at DESC")
  end

  def new
    @lesson = Lesson.new
  end

  def create
     @lesson = Lesson.new(lesson_params)
    if current_user.admin? && @lesson.save
      redirect_to @lesson, notice: 'Lesson was successfully created.'
    else
      render action: 'new'
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

private
 # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    def correct_user
      @lesson = current_user.lessons.find_by(id: params[:id])
      redirect_to lessons_path, notice: "Not authorized to edit this lesson" if @lesson.nil?
    end

  def lesson_params
    params.require(:lesson).permit(:level, :starts_at, :ends_at, :instructor, :location, :user_id)
  end

end