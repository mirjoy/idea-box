require 'rails_helper'

RSpec.describe "a user creates a task", type: :feature do 
	it "can see all of the other tasks" do
		Idea.create(title: "dumb stuff", body: "do it")

		visit root_path
		expect(page).to have_content("dumb stuff")
	end
end