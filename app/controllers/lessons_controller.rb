class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_enrollment_for_current_lesson, only: [:show]

  # def new
  #   @lesson = Lesson.new
  # end

  def create
    @lesson = current_section.lessons.create(lesson_params)
    redirect_to instructor_course_path(current_section.course)
  end

  def show
  end

  private

  def require_enrollment_for_current_lesson
   if !current_user.enrolled_in?(current_lesson.section.course)
      render plain: 'You must be Enrolled', status: :unauthorized
    end
  end

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
end
