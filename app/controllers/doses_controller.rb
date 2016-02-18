class DosesController < ApplicationController
    def index
      @doses = doses.all
    end

    def show
      @dose = dose.find(params[:id])
    end

    def create
      @dose = dose.new(ingredient_params)
      @dose.save
    end

    def update
      @ = .find(params[:id])
    end

    def edit
      @ = .find(params[:id])
    end

    def destroy
       = .find(params[:id])
    end
end
