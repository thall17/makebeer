require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it "orders by name" do
    user1 = User.create!(username: "user1", password: "password", email: "user1@user1.com")
    recipe1 = Recipe.create!(name: "recipe1", user: user1)
    recipe2 = Recipe.create!(name: "recipe2", user: user1)

    expect(Recipe.order('name asc')).to eq([recipe1, recipe2])
  end
end
