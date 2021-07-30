class RecipesController < ApplicationController

  def index
    @recipes = Rails.cache.fetch('recipes/all', expires_in: 10.minutes) do
      Recipe::Operation::GetAll.()[:collection] || []
    end
  end

  def show
    @recipe = Rails.cache.fetch("recipe/single#{params[:id]}", expires_in: 10.minutes) do
      Recipe::Operation::GetOne.(id: params[:id])[:response]
    end
  end

end
