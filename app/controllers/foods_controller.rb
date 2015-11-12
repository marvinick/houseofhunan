class FoodsController < ApplicationController
	before_action :set_menu
	before_action :set_food, only: [:show, :edit, :update, :destroy]

  def new
  	@food = @menu.foods.build
  end

  def create 
  	@food = @menu.foods.build(food_params)
  	if @food.save
  		flash[:notice] = "Food has been created."
  		redirect_to @menu
  	else
  		flash.now[:alert] = "Food has not been created."
  		render :new
  	end
  end

  def show; end

  def edit; end

  def update 
    if @food.update(food_params)
      flash[:notice] = "Food has been updated."
      redirect_to [@menu, @food]
    else
      flash.now[:alert] = "Food has not been updated."
      render :edit
    end
  end

  def destroy 
    @food.destroy
    flash[:notice] = "Food has been deleted."
    redirect_to @menu 
  end

  private 

  def food_params
  	params.require(:food).permit(:name, :description, :price)
  end

  def set_menu
  	@menu = Menu.find(params[:menu_id])
  end

  def set_food
  	@food = Food.find(params[:id])
  end
end
