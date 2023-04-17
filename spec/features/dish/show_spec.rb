require 'rails_helper'

RSpec.describe 'Dish Show Page' do
  before(:all) do
    test_data
  end

  describe 'User Story 1' do
    it "can see the dish's name and description" do
      visit '/dishes/1'

      within "#header" do
        expect(page).to have_content("Buffalo Mac and Cheese")
      end
      within "#dish_info" do
        expect(page).to have_content("Chicken Breast tossed in Buffalo Sauce, smothered in cheese with macaroni noodles")
        expect(page).to have_content("Total Calories: 1000")
      end

      within "#dish_ingredients" do
        expect(page).to have_content("Chicken Breast")
        expect(page).to have_content("Macaroni Noodles")
        expect(page).to have_content("Cheese")
        expect(page).to have_content("Buffalo Sauce")
      end

      within "#prepared_by" do
        expect(page).to have_content("Chef: Brandon Johnson")
      end
    end
  end

  describe 'User Story 2' do
    it "see a form to add an ingredient to the dish" do
      visit '/dishes/1'

      within "#add_ingredient" do
        expect(page).to have_content("Add an Ingredient")
        expect(page).to have_button("Add Ingredient")
      end
    end

    it 'functionality to add an ingredient to the dish' do
      visit '/dishes/1'
      
      within "#add_ingredient" do
        fill_in "ingredient_id", with: @sriracha.id
        click_button "Add Ingredient"
      end

      expect(current_path).to eq('/dishes/1')

      within "#dish_ingredients" do
        expect(page).to have_content("Sriracha")
      end
    end
  end
end