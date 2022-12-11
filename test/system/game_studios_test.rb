require "application_system_test_case"

class GameStudiosTest < ApplicationSystemTestCase
  setup do
    @game_studio = game_studios(:one)
  end

  test "visiting the index" do
    visit game_studios_url
    assert_selector "h1", text: "Game studios"
  end

  test "should create game studio" do
    visit game_studios_url
    click_on "New game studio"

    fill_in "Name", with: @game_studio.name
    click_on "Create Game studio"

    assert_text "Game studio was successfully created"
    click_on "Back"
  end

  test "should update Game studio" do
    visit game_studio_url(@game_studio)
    click_on "Edit this game studio", match: :first

    fill_in "Name", with: @game_studio.name
    click_on "Update Game studio"

    assert_text "Game studio was successfully updated"
    click_on "Back"
  end

  test "should destroy Game studio" do
    visit game_studio_url(@game_studio)
    click_on "Destroy this game studio", match: :first

    assert_text "Game studio was successfully destroyed"
  end
end
