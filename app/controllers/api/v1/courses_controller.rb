class Api::V1::CoursesController < ApplicationController
    def index
        course = Course.all 
        render json: course
    end
end
