class Api::CoursesController < ApplicationController
  wrap_parameters :course, include: [:name, :map_ids]
  def index
    render json: Course.all
  end

  def show
    @course = Course.find(params[:id])
    render :show
  end

  def create
    debugger
    course = Course.new(course_params)
    if course.save
      render json: course
    else
      render json: curse.errors.full_messages, status: 422
    end
  end

  def course_params
    params.require(:course).permit(:name, :map_ids => [])
  end
end
