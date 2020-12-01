class Api::V1::StudentCoursesController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show] 
    def index
        student_courses = StudentCourses.all
        render json: student_courses, include: [:students, :courses]
    end

    

    def show
        student_courses = StudentCourses.find(params[:id])
        render json: student_courses, include: [:students, :courses]
    end

end
