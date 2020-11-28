class Api::V1::ContentsController < ApplicationController
    def index
        content = Content.all 
        render json: content
      end
    
      def create
        content = Content.create!(content_params)
        render json: content
        
      end

      def show 
        content = Content.find(params[:id])
        render json: content
      end 

      def update
        content = Content.find(params[:id])
        content.update(content_params)
       
        render json: content
      end
    
      def destroy
        content = Content.find(params[:id])
        content.destroy
        render json: content
    end
      
      private
    
      def content_params
        
        params.require(:content).permit(:content_type, :material, :course_id, :likes, :instructor_id)
      end
    
end
