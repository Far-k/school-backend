class Api::V1::InstructorsController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show] 
    def index 
        @instructor = Instructor.all 
        render json: @instructor
    end 


    def create
        @instructor = Instructor.create!(instructor_params)
        if @instructor.valid?
          render json: { instructor: @instructor }, status: :created
        else
          render json: { error: "Failed" }, status: :not_acceptable
        end
    end  

    private
    def instructor_params
        
        params.require(:instructor).permit(:name,:username,:password)
        
    end
        
    #     skip_before_action :logged_in?, only: [:create]
    # def index
    #     headers= request.headers["Authorization"]
    #     token= headers.split(" ")[1]
    #     begin
            
    #     instructor_id = JWT.decode(token, "brandon")[0]["instructor_id"]
    #     instructor= Instructor.find(instructor_id)
    #     # rescue JWT::DecodeError
    #     rescue 

    #        instructor=nil
    #     end
        
    #     render json: instructor

    # end

    # def show
    #     instructor = Instructor.find(params[:id])
    #     render json: instructor
    # end

    # def create
    #     instructor = Instructor.new(user_params)

    #     if instructor.valid?
    #         instructor.save
    #         render json: instructor, status: :created
            
    #     else
    #         render json: {error: "Failed to create a user"}, status: :not_acceptable
    #     end
 
        
        #User.create(params[:username])
        
        
   



    
    # private

    # def user_params
    #     params.permit(:name,:username, :password)
    # end
    



    
end
