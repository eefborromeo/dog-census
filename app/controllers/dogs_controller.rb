class DogsController < ApplicationController
    def index
        @dogs = Dog.all.order(created_at: :desc)
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.new()
    end

    private

        def dog_params
            params.require(:dog).permit(:name, :age, :breed, :likes, :dislikes)
        end
end
