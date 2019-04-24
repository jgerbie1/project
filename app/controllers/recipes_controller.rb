class RecipesController < ApplicationController
    def new
    end
    def show
        @recipe = Recipe.find(params[:id])
    end
    def create 
        @recipe = Recipe.new(params[:recipes])
        @recipe.save
        redirect_to @recipe
    end
    private
        def recipes_params
            params.require(:Recipe).permit(:title, :instruction, :ingredients, :description)
        end
end
