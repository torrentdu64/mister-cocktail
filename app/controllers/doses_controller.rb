class DosesController < ApplicationController

  before_action :set_cocktail, only: :create
    def index
      @doses = doses.all
    end

    def show
      @dose = dose.find(params[:id])
    end

    def create
      @dose = dose.new(dose_params)
      if@dose.save
      else
        render "cocktail/new"
    end

    def update
      @ = .find(params[:id])
    end

    def edit
      @ = .find(params[:id])
    end

    def destroy
      @dose  = Dose.find(params[:id])
      @dose.destroy
      redirect_to @dose.cocktail
    end

    def set_cocktail
      @cocktail = Cocktail.find(params[:cocktail_id])
    end

    def dose_params
      params.require(:dose).permit(:description,:ingredient)
end
