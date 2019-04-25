class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all
    end
    def new
    end
    def show
        @recipe = Recipe.find(params[:id])
    end
    def create 
        @recipe = Recipe.new(recipes_params)
        @recipe.save
        redirect_to @recipe
    end
    private
        def recipes_params
            params.require(:recipe).permit(:title, :instruction, :ingredients, :description)
        end
end
