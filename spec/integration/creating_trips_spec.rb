require 'spec_helper'

feature 'Creating Trip' do

  scenario "can create a trip" do
    visit '/'
    fill_in 'Startzipcode', :with => '90210'
    fill_in 'Endzipcode', :with => '98032'
    click_button 'Create Trip'
    page.should have_content('Trip has been created.')
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
