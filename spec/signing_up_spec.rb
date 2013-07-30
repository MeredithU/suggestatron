require 'spec_helper'

feature 'Signing up' do
  scenario 'Successful sign up' do
    visit '/'
    click_link 'Sign up'
    fill_in "Email", :with => "user@suggestatron.com"
    fill_in "Password", :with => "password"
    fill_in "Password confirmation", :with => "password"
    click_button "Sign up"
    message = "Please open the link to activate your account."
    page.should have_content(message)
  end

  scenario 'Signing in via form' do
    User.find_by_email('suggestatron@example.com').confirm!
    visit '/'
    click_link 'Sign in'
    fill_in 'Email', :with => "suggestatron@example.com"
    fill_in 'Password', :with => "password"
    click_button "Sign in"
    page.should have_content("Signed in successfully.")
  end
end
