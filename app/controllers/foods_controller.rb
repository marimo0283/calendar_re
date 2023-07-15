class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @food = Food.find(params[:id])
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    if @food.update(food_params)
      redirect_to food_path(@food)
    else
      render :edit
    end
  end

  def destroy
    food = Food.find(params[:id])
    food.destroy
    redirect_to root_path
  end

  def all
    @foods = Food.all
  end

  private

  def food_params
    params.require(:food).permit(:morning, :noon, :night, :memo, :start_time)
  end
end
