module Features
  def sign_in
    visit root_path
    fill_in "Email", with: "dev@example.org"
    click_on "Sign in"
  end
end