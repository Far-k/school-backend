class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]
    def create # POST /api/v1/login
        @user = Instructor.find_by(name: user_login_params[:name])
        # @user.authenticate('password')
        if @user && @user.authenticate(user_login_params[:password])
          @token = encode_token({ user_id: @user.id })
          render json: { user: InstructorSerializer.new(@user), jwt: @token }, status: :accepted
        else
          render json: { message: "Invalid username or password" }, status: :unauthorized
        end
    end
    private
    def user_login_params
        params.require(:instructor).permit(:name, :password)
    end
end
