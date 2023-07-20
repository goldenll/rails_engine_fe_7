require "rails_helper"

RSpec.describe "merchants index page" do 
  it "displays a list of merchant names that link to their show page"  do 
    # visit merchants_path  
    visit "/merchants"
    save_and_open_page
    expect(page).to have_link("Schroeder-Jerde")
    click_link "Schroeder-Jerde"
    expect(current_path).to eq(merchant_path(1))
  end
end


# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.