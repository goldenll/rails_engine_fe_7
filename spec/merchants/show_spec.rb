require "rails_helper"

RSpec.describe "merchant show page" do 
  xit "displays a list of items the merchant sells"  do 
    visit merchant_path(1) 
    expect(page).to have_content(" ")

  end
end


# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.