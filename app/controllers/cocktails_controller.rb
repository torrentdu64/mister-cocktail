class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new(dose_params)
  end

  def create
    @cocktail = Cocktail.new(dose_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end


  def destroy
     = .find(params[:id])
  end


end

