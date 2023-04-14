require "rails_helper"

feature "User creates todo" do
  scenario "sucefully" do
    sign_in

    click_on "Add a new todo"
    fill_in "Title", with: "Buy lettuce"
    click_on "submit"

    expect(page).to have_css '.todos li', text: 'Buy lettuce'
  end
end