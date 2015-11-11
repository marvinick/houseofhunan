require "rails_helper"

RSpec.feature "Users can delete foods" do 
	let(:menu) { FactoryGirl.create(:menu) }
	let(:food) { FactoryGirl.create(:food, menu: menu)}

	before do 
		visit menu_food_path(menu, food)
	end

	scenario "successfully" do 
		click_link "Delete Food"

		expect(page).to have_content "Food has been deleted."
		expect(page.current_url).to eq menu_url(menu)
	end
end