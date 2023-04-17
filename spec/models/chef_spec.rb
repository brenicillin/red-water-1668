require 'rails_helper'

RSpec.describe Chef, type: :model do
  describe "validations" do
    it {should validate_presence_of :name}
  end
  describe "relationships" do
    it {should have_many :dishes}
    it {should have_many(:ingredients).through(:dishes)}
  end

  describe 'instance methods' do
    before(:all) do
      test_data
    end

    it 'unique_ingredients' do
      expect(@brandon.unique_ingredients.sort).to eq([@mac, @cheese, @buffalo, @chicken, @beef].sort)
    end

    it 'top_3_ingredients' do
      expect(@guy.top_3_ingredients).to eq([@bun, @guy_sauce, @lettuce])
      expect(@brandon.top_3_ingredients).to match_array([@beef, @mac, @cheese])
    end
  end
end