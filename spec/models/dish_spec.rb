require 'rails_helper'

RSpec.describe Dish, type: :model do
  before(:all) do
    test_data
  end

  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :description}
  end
  describe "relationships" do
    it {should belong_to :chef}
    it {should have_many :dish_ingredients}
    it {should have_many(:ingredients).through(:dish_ingredients)}
  end

  describe 'instance methods' do 
    it 'total_calories' do
      expect(@buffalo_mac.total_calories).to eq(1000)
    end
  end
end