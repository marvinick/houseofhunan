require "rails_helper" 

RSpec.feature "Users can edit foods" do
	let(:menu) { FactoryGirl.create(:menu)}
	let(:food) { FactoryGirl.create(:food, menu: menu)}
	let(:user) { FactoryGirl.create(:user)}

	before do 
		login_as(user)
		visit menu_food_path(menu, food)
		click_link "Edit Food"
	end

	scenario "with valid attributes" do 
		fill_in "Name", with: "Fried rice"
		click_button "Update Food"

		expect(page).to have_content "Food has been updated."
		expect(page).to have_content "Fried rice"
		expect(page).to_not have_content food.name 
	end

	scenario "with invalid attributes" do 
		fill_in "Name", with: ""
		click_button "Update Food"

		expect(page).to have_content "Food has not been updated."
	end
end
