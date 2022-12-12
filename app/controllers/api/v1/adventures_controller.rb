module Api 
    module V1 
        class AdventuresController < ApplicationController

            def index 
                adventures = Adventure.all
                render json: adventures
            end

            def show 
                adventure = Adventure.find_by(id: params[:id])
                render json: adventure
            end 

            def create 
                adventure = Adventure.new(adventure_params)
                if adventure.save 
                    render json: adventure
                else 
                    render json: {errors: adventure.errors.messages}, status: 422
                end
            end

            def update 
                adventure = Adventure.find_by(id: params[:id])
                if adventure.update(adventure_params)
                    render json: adventure
                else 
                    render json: {errors: adventure.errors.messages}, status: 422
                end
            end

            def destroy
                adventure = Adventure.find_by(id: params[:id])
                if adventure.destroy
                    head :no_content
                else 
                    render json: {errors: adventure.errors.messages}, status: 422
                end
            end



        private 
        def adventure_params 
            params.require(:adventure).permit(:title, :image_url)
        end

        def options 
            @options ||= {include: %i[birds]}
        end 
        end
    end 
end 