require 'rails_helper'

RSpec.describe 'Chef Show Page' do
  before(:all) do
    test_data
  end

  describe 'User Story 3' do
    it 'shows a link to view chef ingredient index' do
      visit '/chefs/1'

      within "#chef_ingredients" do
        expect(page).to have_link("View All Ingredients")
      end
    end

    it 'takes me to chef ingredient index' do
      visit '/chefs/1'

      within "#chef_ingredients" do
        click_link "View All Ingredients"
      end

      expect(current_path).to eq('/chefs/1/ingredients')
    end

    it 'shows a unique list of all ingredients that chef uses' do
      visit '/chefs/1/ingredients'

      expect(page).to have_content("Chicken Breast")
      expect(page).to have_content("Macaroni Noodles")
      expect(page).to have_content("Cheese")
      expect(page).to have_content("Buffalo Sauce")
      expect(page).to_not have_content("Ground Beef")
      expect(page).to_not have_content("Bun")
      expect(page).to_not have_content("Tomato")
      expect(page).to_not have_content("Lettuce")
      expect(page).to_not have_content("Guy Sauce")

      visit '/chefs/2/ingredients'

      expect(page).to have_content("Ground Beef")
      expect(page).to have_content("Bun")
      expect(page).to have_content("Tomato")
      expect(page).to have_content("Lettuce")
      expect(page).to have_content("Guy Sauce")
      expect(page).to_not have_content("Chicken Breast")
      expect(page).to_not have_content("Macaroni Noodles")
      expect(page).to_not have_content("Cheese")
      expect(page).to_not have_content("Buffalo Sauce")
    end
  end
end