class MenusController < ApplicationController
	before_action :set_menu, only: [:show, :destroy]
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
			redirect_to menu_path(@menu)
		else
			flash.now[:alert] = "Menu is not successfully created."
			render :new
		end
	end

	def show
		@menus = Menu.all
  end 

  def destroy
  	@menu.destroy
  	flash[:notice] = "Menu has been deleted."
  	redirect_to menus_path
  end

	private 

	def set_menu
		@menu = Menu.find(params[:id])
	end

	def menu_params
		params.require(:menu).permit(:name, :description, :attachment, :attachment_cache)
	end
end
