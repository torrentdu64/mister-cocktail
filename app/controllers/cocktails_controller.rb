class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to @cocktails
    else
      render :new
    end
  end


 private

 def set_cocktail
  @cocktail = Cocktail.(params[:id])
 end

  def cocktail_params
  params.require(:cocktail).permet(:name)
  end
end



