require "rails_helper" 

RSpec.feature "Users can create foods" do 
	before do 
		menu = FactoryGirl.create(:menu, name: "Lunch")
		visit menu_path(menu)
		click_link "New Food"
	end

	scenario "with valid attributes" do 
		fill_in "Name", with: "Beef"
		fill_in "Description", with: "seared"
		fill_in "Price", with: "5"
		click_button "Create Food"

		expect(page).to have_content "Food has been created."
	end

	scenario "invalid attributes" do 
		click_button "Create Food"

		expect(page).to have_content "Food has not been created."
	end	
end

