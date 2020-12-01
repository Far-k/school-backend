class Api::V1::CoursesController < ApplicationController
    skip_before_action :authorized, only: [:index] 
    def index
        
        course = Course.includes(:contents).all.map do |content| 
            content_json = content.as_json 
            content_json[:contents] = content.contents.as_json
            content_json
        end
        render json: course
    end



end
