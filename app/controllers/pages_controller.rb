class PagesController < ApplicationController
  def home
  	@menus = Menu.all
  end
end
