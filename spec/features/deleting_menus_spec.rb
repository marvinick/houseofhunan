require "rails_helper"

RSpec.feature "Users can delete menus" do 
	scenario "successfully" do 
		FactoryGirl.create(:menu, name: "Fried rice")

		visit "/"
		click_link "Menus"
		click_link "Fried rice"
		click_link "Delete Menu"

		expect(page).to have_content "Menu has been deleted."
		expect(page).to have_no_content "Fried rice"
	end
end