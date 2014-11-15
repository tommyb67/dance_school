class LessonsController < ApplicationController

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


  def lesson_params
    params.require(:lesson).permit(:level, :starts_at, :ends_at, :instructor, :location)
  end

end