class Api::V1::StudentsController < ApplicationController
    def index
        student = Student.all 
        render json: student
    end

    
        def create
            student = Student.new(student_params)
    
            if student.valid?
                student.save
                render json: student, status: :created
                
            else
                render json: {error: "Failed to create a student"}, status: :not_acceptable
            end
        end
      
            
            
            
        private
    
        def student_params
            params.require(:student).permit(:name, :username, :password)
        end
    
    
end

