class DogsController < ApplicationController
    before_action :set_dog, only: [:show, :edit, :update, :destroy]
    
    def index
        @dogs = Dog.all.order(created_at: :desc)
        @breeds = Dog.select(:breed).distinct
    end

    def show
    end

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.new(dog_params)

        if @dog.save
            redirect_to dogs_path
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @dog.update(dog_params)
            redirect_to @dog
        else
            render :edit
        end
    end

    def destroy
        @dog.destroy
        redirect_to dogs_path
    end

    private

        def set_dog
            @dog = Dog.find(params[:id])
        end

        def dog_params
            params.require(:dog).permit(:name, :age, :breed, :likes, :dislikes)
        end
end
