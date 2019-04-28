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
<<<<<<<<< saved version
        end 
    end 
        
    def show
        @recipe = Recipe.find(params[:id])
    end
    
    def edit
        @recipe = Recipe.find(params[:id])
    end
    
    def update
        @recipe = Recipe.find(params[:id])
        if @recipe.update(recipe_params)
            redirect_to @recipe
        else
            render 'edit'
        end
    end
    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.destroy
        redirect_to recipes_path
    end

    private
        def recipe_params
            params.require(:recipe).permit(:title, :description, :ingredients, :instruction)
=========
    private
        def recipes_params
            params.require(:recipe).permit(:title, :instruction, :ingredients, :description)
>>>>>>>>> local version
        end
end
