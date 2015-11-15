class MenusController < ApplicationController
	before_action :set_menu, only: [:show, :edit, :update, :destroy]
	before_filter :authenticate_user!, except: [:index, :show]
	
	def index
		@menus = Menu.all
	end

	def new
		@menu = Menu.new
	end 

	def create 
		@menu = Menu.new(menu_params)
		if @menu.save
			flash[:notice] = "Menu is successfully created."
			redirect_to menus_path
		else
			flash.now[:alert] = "Menu is not successfully created."
			render :new
		end
	end

	def show
		@menus = Menu.all
  end 

  def edit; end

  def update 
  	if @menu.update(menu_params)
  		flash[:notice] = "Menu has been updated."
  		redirect_to menu_path(@menu)
  	else
  		flash.now[:alert] = "Menu has not been edited."
  		render :edit
  	end
  end

  def destroy
  	@menu.destroy
  	flash[:notice] = "Menu has been deleted."
  	redirect_to menus_path
  end

	private 

	def set_menu
		@menu = Menu.find(params[:id])
	rescue ActiveRecord::RecordNotFound
		flash[:alert] = "The menu you were looking for could not be found."
		redirect_to menus_path
	end

	def menu_params
		params.require(:menu).permit(:name, :description, :attachment, :attachment_cache)
	end
end
