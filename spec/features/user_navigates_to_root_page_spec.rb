require "rails_helper"

RSpec.describe "HomeEndpointSpec", type: :feature do

  scenario "user navigates to the home page" do
    visit "/"
    expect(page).to have_content("Welcome to the Five Factor Personality Test Api!")
  end
end
