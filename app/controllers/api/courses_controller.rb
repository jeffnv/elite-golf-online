class Api::CoursesController < ApplicationController
  wrap_parameters :course, include: [:name, :map_ids]

  def index
    if params[:list_type] && params[:list_type] == "top_5"
      @courses = Course.popular
    else
      @courses = Course.all.includes(:high_scores, :maps)
    end
    render :index
  end

  def top_courses
    @courses = Course.top5.includes(:high_scores, :maps)
    render :index
  end

  def show
    @course = Course.find(params[:id])
    render :show
  end

  def create
    course = Course.new(course_params)
    if course.save
      render json: course
    else
      render json: course.errors.full_messages, status: 422
    end
  end

  def course_params
    params.require(:course).permit(:name, :map_ids => [])
  end
end
