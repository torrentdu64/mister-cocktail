class CocktailsController < ApplicationController
  def index
    @ = .scoped
  end

  def show
    @ = .find(params[:id])
  end

  def create
    @ = .new(params[:])
  end


  def destroy
     = .find(params[:id])
  end
end

