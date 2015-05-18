require 'rails_helper'

RSpec.describe "a user creates a task", type: :feature do 
	it "can see all of the previous tasks" do
		Idea.create(title: "dumb stuff", body: "do it")

		visit root_path
		expect(page).to have_content("dumb stuff")
	end

	it "can create a new task" do
		visit root_path
		fill_in "idea[title]", with: "better idea"
		fill_in "idea[body]", with: "better stuff"
		click_link_or_button "submit"

		expect(page).to have_content("better idea")
	end
end