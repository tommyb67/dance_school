class LessonsController < ApplicationController

  def index
    @lessons = Lesson.where("starts_at >= ? and ends_at <= ?",
    1.month.ago, 1.week.from_now.end_of_week)
  end

end