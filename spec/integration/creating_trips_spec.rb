require 'spec_helper'

feature 'Creating Trip' do
#  before do
#    Factory(:trip, :startzipcode => "90210", :endzipcode => "98032")
#      user = Factory(:user, :email => "user@suggestatron.com")
#    user.confirm!

#    visit '/'
#    click_link "Internet Explorer"
#    click_link "New Trip"
#    message = "You need to sign in or sign up before continuing."
#    page.should have_content(message)

#    fill_in "Email", :with => "user@suggestatron.com"
#    fill_in "Password", :with => "password"
#    click_button "Sign in"
#    within("h2") { page.should have_content("New Trip") }
#  end



  scenario "can create a trip" do
    visit '/'
    #fill_in 'Starting Zip Code', :with => '90210'
    #fill_in 'Destination Zip Code', :with => '98032'
   # click_button 'Ready'
    #page.should have_content('Trip has been created.')
    #trip = Trip.find_by_name("TextMate 2")
    #page.current_url.should == trip_url(trip)
    #title = "Trip"
    #find("title").should have_content(title)
  end


  #scenario "can not create a trip without a zip code" do
  #  page.should have_content("Trip has not been created.")
  #  page.should have_content("Zip code can't be blank")
  #end

end
