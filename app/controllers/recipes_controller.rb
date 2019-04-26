class RecipesController < ApplicationController
   
    def index
        @recipes = Recipe.all
    end
    
    def new
        @recipe = Recipe.new
    end
    
    def show
        @recipe = Recipe.find(params[:id])
    end
    
    def create 
        @recipe = Recipe.new(recipe_params)
<<<<<<< HEAD
        if 
        @recipe.save
        redirect_to @recipe
    else
        render 'new'
    end 
=======
        
        if   @recipe.save
            redirect_to @recipe
        else 
            render 'new'
        end
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
>>>>>>> faf94d74ff0051039f3ca2546866699354248d38
    end

    private
        def recipe_params
            params.require(:recipe).permit(:title, :instruction, :ingredients, :description)
        end
end
