class Lesson < ActiveRecord::Base
  has_many :dancers

  def repeat!(num_times)
    1.upto(num_times) do |i|
      next_lesson = dup                 # self is a Lesson instance (the first lesson created by controller)
      next_lesson.starts_at + i.weeks   # http://api.rubyonrails.org/classes/Numeric.html gives you .weeks
      next_lesson.ends_at + i.weeks
      next_lesson.save!
    end
  end

end