class DrinksControllerController < ApplicationController

    def index
        @drinks = Drinks.all
        render :index
    end

    def show
        @drink = Drink.find(params[:id])
        render :show
    end

    def create
        @drink = Drink.new(drink_params)
        if @drink.save
            render :show
        else
            render json: @drink.errors.full_messages, status 422
        end
    end

    def destroy
        @drink = Drink.find(params[:id])
        @drink.destroy
    end

    private

    def drink_params
        params.require(:drink).permit(:name, :year, :caffine_content, :caffine_percentage)
    end


end
