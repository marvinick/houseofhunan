require "rails_helper"

RSpec.feature "Users can only see the appropriate links" do 
	let(:user) { FactoryGirl.create(:user)}
	
	before do 
		FactoryGirl.create(:menu, name: "Fried rice")
		FactoryGirl.create(:food, name: "Noodle")
	end

	context "anonymous users" do 
		before do 
			visit "/"
			click_link "Menus"
		end
		scenario "cannot see the new menu link" do 
			expect(page).not_to have_link "New Menu"
		end

		scenario "cannot see the edit menu link" do 
			click_link "Fried rice"
			expect(page).not_to have_link "Edit Menu"
		end

		scenario "cannot see the delete menu link" do 
			click_link "Fried rice"
			expect(page).not_to have_link "Delete Menu"
		end

		scenario "cannot see the new food link" do 
			click_link "Fried rice"
			expect(page).not_to have_link "New Food"
		end

		scenario "cannot see the edit and delete food link" do 
			click_link "Fried rice"
			expect(page).not_to have_link "Show"
		end
	
	end

	context "admin users" do 
		before do 
			login_as(user)
			visit "/"
			click_link "Menus"
		end

		scenario "can see the New Menu link" do 
			expect(page).to have_link "New Menu"
		end

		scenario "can see the Edit Menu link" do 
			click_link "Fried rice"
			expect(page).to have_link "Edit Menu"
		end

		scenario "can see the Delete Menu link" do 
			click_link "Fried rice"
			expect(page).to have_link "Delete Menu"
		end

		scenario "can see the new food link" do 
			click_link "Fried rice"
			expect(page).to have_link "New Food"
		end

		scenario "can see the edit food link" do 
			click_link "Fried rice"
			click_link "Show"
			expect(page).to have_link "Edit Food"
		end
	end
end
