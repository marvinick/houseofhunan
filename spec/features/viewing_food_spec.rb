require "rails_helper"

RSpec.feature "Users can view food" do 
	before do  
		rice = FactoryGirl.create(:menu, name: "Fried rice")
		FactoryGirl.create(:food, menu: rice, name: "YOLO", description: "young", price: 5)

		noodle = FactoryGirl.create(:menu, name: "Noodle Luw")
		FactoryGirl.create(:food, menu: noodle, name: "YULU", description: "old", price: 4)

		visit "/"
		click_link "Menus" 
	end

	scenario "for a given menu" do 
		click_link "Fried rice"

		expect(page).to have_content "YOLO"
		expect(page).to_not have_content "YULU"

		click_link "Noodle Luw"

		expect(page).to have_content "YULU"
		expect(page).to have_content "old"
	end
end 