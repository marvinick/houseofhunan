require "rails_helper"

RSpec.feature "Users can create lunch menu" do 
	scenario "with valid attributes" do
		
		visit "/"
		click_link "New Menu" 
		fill_in "Name", with: "Fried Rice" 
		click_button "Create Menu"

		expect(page).to have_content "Menu is successfully created."
	end
end
