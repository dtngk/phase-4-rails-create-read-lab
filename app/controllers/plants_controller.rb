class PlantsController < ApplicationController

    def index
        p = Plant.all
        render json: p   
    end

    def show
        p = Plant.find_by(id: params[:id])
        render json: p
    end

    def create
        p = Plant.create(plant_params)
        render json: p, status: :created
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end
end
