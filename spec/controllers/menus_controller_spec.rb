require 'rails_helper'

RSpec.describe MenusController, type: :controller do
	it "handles a missing menu correctly" do
		get :show, id: "not-here"

		expect(response).to redirect_to(menus_path)
		message = "The menu you were looking for could not be found."
		expect(flash[:alert]).to eq message
	end
end
