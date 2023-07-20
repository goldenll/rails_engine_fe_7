require "rails_helper"

RSpec.describe "merchants index page" do 
  it "displays a list of merchant names that link to their show page"  do 
    # visit merchants_path ; I'm not sure why this is not working 
    visit "/merchants"

    expect(page).to have_link("Schroeder-Jerde")
    expect(page).to have_link("Koepp LLC")
    expect(page).to have_link("Glover Inc")

    click_link "Schroeder-Jerde"
    expect(current_path).to eq("/merchants/1")
  end
end
