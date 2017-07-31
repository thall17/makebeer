require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_recipe_url
    assert_response :success
  end

  test "should create recipe" do
    assert_difference('Recipe.count') do
      post recipes_url, params: { recipe: { abv: @recipe.abv, batch_size: @recipe.batch_size, boil_time: @recipe.boil_time, color: @recipe.color, container: @recipe.container, date: @recipe.date, desired_og: @recipe.desired_og, fermenter: @recipe.fermenter, ibu: @recipe.ibu, measured_fg: @recipe.measured_fg, measured_og: @recipe.measured_og, name: @recipe.name, status: @recipe.status, type: @recipe.type, version: @recipe.version, visibility: @recipe.visibility } }
    end

    assert_redirected_to recipe_url(Recipe.last)
  end

  test "should show recipe" do
    get recipe_url(@recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipe_url(@recipe)
    assert_response :success
  end

  test "should update recipe" do
    patch recipe_url(@recipe), params: { recipe: { abv: @recipe.abv, batch_size: @recipe.batch_size, boil_time: @recipe.boil_time, color: @recipe.color, container: @recipe.container, date: @recipe.date, desired_og: @recipe.desired_og, fermenter: @recipe.fermenter, ibu: @recipe.ibu, measured_fg: @recipe.measured_fg, measured_og: @recipe.measured_og, name: @recipe.name, status: @recipe.status, type: @recipe.type, version: @recipe.version, visibility: @recipe.visibility } }
    assert_redirected_to recipe_url(@recipe)
  end

  test "should destroy recipe" do
    assert_difference('Recipe.count', -1) do
      delete recipe_url(@recipe)
    end

    assert_redirected_to recipes_url
  end
end
