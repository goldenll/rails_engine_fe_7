require "rails_helper"

RSpec.describe "merchant show page" do 
  it "displays a list of items the merchant sells"  do 
    visit "/merchants/1"

    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Item Provident At")
    expect(page).to have_content("Item Ea Voluptatum")
  end
end
