class PagesController < ApplicationController
  def home
  	@menus = Menu.all
  	@menu = Menu.new
  end
end
