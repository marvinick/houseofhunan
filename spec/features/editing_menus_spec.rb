require "rails_helper"

RSpec.feature "Users can edit existing menus" do 
	let(:user) { FactoryGirl.create(:user)}

	scenario "with valid attributes" do 
		FactoryGirl.create(:menu, name: "Fried rice")
		login_as(user)
		visit "/"
		click_link "Menus"
		click_link "Fried rice" 
		click_link "Edit Menu"
		fill_in "Name", with: "Noodle"
		click_button "Update Menu"

		expect(page).to have_content "Menu has been updated."
		expect(page).to have_content "Noodle"
	end
end