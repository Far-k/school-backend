class Api::V1::AuthController < ApplicationController
    def create
        user = Instructor.find_by(username: params[:username])
       
        if user && user.authenticate(params[:password])
            
            render json: {username: username, token: JWT.encode({instructor_id: instructor.id},"shhh")}
        else
            render json: {error: "instructor"}
        end
    end
    # skip_before_action :logged_in?, only: [:create]    
    
    # def create
    #     instructor = Instructor.find_by(username: params[:username])

    #     if instructor && instructor.authenticate(params[:password])
    #         render json: {username: instructor.username, token: encode_token({instructor_id: instructor.id})} 
    #     else
    #         render json: {error: "invalid username or password"}
    #     end
    # end 
end
    

