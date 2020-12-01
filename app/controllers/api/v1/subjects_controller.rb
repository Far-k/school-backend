class Api::V1::SubjectsController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show] 
    def index
        subject = Subject.all
        render json: subject, include: [:courses]
    end

    def show
        subject = Subject.find(params[:id])
        render json: subject, include: :courses
    end
    

end
