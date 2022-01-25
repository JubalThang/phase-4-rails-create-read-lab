class PlantsController < ApplicationController
    def index
        render json: Plant.all
    end

    def show 
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end

    def create 
        plant = Plant.create(filter_params)
        render json: plant, status: :created
        # puts params
    end

    private 
    def filter_params 
        params.permit(:name, :image, :price)
    end
end
