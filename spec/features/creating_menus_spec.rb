require "rails_helper"

RSpec.feature "Users can create lunch menu" do 
	before do 
		visit "/"
		click_link "Menus"
		click_link "New Menu" 
	end

	scenario "with valid attributes" do
		
		fill_in "Name", with: "Fried Rice" 
		attach_file "File", "spec/fixtures/chinese.txt"
		click_button "Create Menu"

		expect(page).to have_content "Menu is successfully created."
		expect(page).to have_content "chinese.txt"
	end

	scenario "persisting file uploads accross form display" do 
		
		attach_file "File", "spec/fixtures/chinese.txt"
		click_button "Create Menu"

		fill_in "Name", with: "Fried Rice"
		fill_in "Description", with: "blalala"
		click_button "Create Menu"

		expect(page).to have_content "chinese.txt"
	end
end
