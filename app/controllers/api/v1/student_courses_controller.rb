class Api::V1::StudentCoursesController < ApplicationController
    def index
        student_courses = StudentCourses.all
        render json: student_courses, include: [:students, :courses]
    end

    

    def show
        student_courses = StudentCourses.find(params[:id])
        render json: student_courses, include: [:students, :courses]
    end

end
