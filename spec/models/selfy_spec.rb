# spec/models/selfy_spec.rb
require 'rails_helper'

RSpec.describe Selfy, type: :model do
  describe "selfy" do
    selfy = FactoryGirl.build(:selfy)

    it "has a valid factory title" do
      expect(selfy.title).to eq("This is test selfy title")
    end

    it "has a valid factory description" do
      expect(selfy.description).to eq("This is test selfy description")
    end
  end
end

# rspec spec/models/selfy_spec.rb