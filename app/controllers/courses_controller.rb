class CoursesController < ApplicationController
    before_action :set_course, only: [:show, :update, :destroy]
  
    def index
      @courses = Course.all
      render json: @courses
    end
  
    def show
      render json: @course
    end
  
    def create
      @course = Course.new(course_params)
  
      if @course.save
        render json: @course, status: :created, location: @course
      else
        render json: @course.errors, status: :unprocessable_entity
      end
    end
  
    def update
      if @course.update(course_params)
        render json: @course
      else
        render json: @course.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @course.destroy
    end
  
    private
      def set_course
        @course = Course.find(params[:id])
      end
  
      def course_params
        params.require(:course).permit(:title, :description, :category_id, :instructor_id, :enrollment_status)
      end
  end
  