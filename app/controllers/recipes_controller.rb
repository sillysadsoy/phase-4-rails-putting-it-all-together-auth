class RecipesController < ApplicationController

    def create
        render json: @current_user.recipes.create!(recipe_params),
        status: :created
    end 

    def index
        render json: Recipe.all
    end 

    private 

    def recipe_params 
        params.permit(:title, :instructions, :minutes_to_complete)
    end 

end
