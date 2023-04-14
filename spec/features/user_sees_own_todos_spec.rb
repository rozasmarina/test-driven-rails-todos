require "rails_helper"

feature "User see owns todos" do
  # before do
  #   allow_any_instance_of(Todo).to receive from_current_user
  # end
  scenario "doesn't see others' todos" do
    Todo.create!(title: "Buy lettuce", email: "someone_else@example.com")

    sign_in_as "dev@example.com"

    expect(page).not_to have_css ".todos li", text: "Buy lettuce"
  end
end