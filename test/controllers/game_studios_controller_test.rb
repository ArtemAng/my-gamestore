require "test_helper"

class GameStudiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_studio = game_studios(:one)
  end

  test "should get index" do
    get game_studios_url
    assert_response :success
  end

  test "should get new" do
    get new_game_studio_url
    assert_response :success
  end

  test "should create game_studio" do
    assert_difference("GameStudio.count") do
      post game_studios_url, params: { game_studio: { name: @game_studio.name } }
    end

    assert_redirected_to game_studio_url(GameStudio.last)
  end

  test "should show game_studio" do
    get game_studio_url(@game_studio)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_studio_url(@game_studio)
    assert_response :success
  end

  test "should update game_studio" do
    patch game_studio_url(@game_studio), params: { game_studio: { name: @game_studio.name } }
    assert_redirected_to game_studio_url(@game_studio)
  end

  test "should destroy game_studio" do
    assert_difference("GameStudio.count", -1) do
      delete game_studio_url(@game_studio)
    end

    assert_redirected_to game_studios_url
  end
end
