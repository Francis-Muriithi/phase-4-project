module Api 
    module V1 
        class BirdsController < ApplicationController

            def create 
                bird = Bird.new(bird_params)
                if bird.save 
                    render json: bird
                else 
                    render json: {errors: bird.errors.messages}, status: 422
                end
            end


            def destroy
               bird = Bird.find_by(id: params[:id])
                if bird.destroy
                    head :no_content
                else 
                    render json: {errors: bird.errors.messages}, status: 422
                end 
            end


        private
        def bird_params
            params.require(:bird).permit(:name, :image_url, :description, :adventure_id)
        end


        end
    end 
end 