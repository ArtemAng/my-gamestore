require "test_helper"

class PermitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @permition = permitions(:one)
  end

  test "should get index" do
    get permitions_url
    assert_response :success
  end

  test "should get new" do
    get new_permition_url
    assert_response :success
  end

  test "should create permition" do
    assert_difference("Permition.count") do
      post permitions_url, params: { permition: { can_edit_categories: @permition.can_edit_categories, can_edit_game: @permition.can_edit_game, can_edit_role: @permition.can_edit_role, can_lock_user: @permition.can_lock_user, role_id: @permition.role_id } }
    end

    assert_redirected_to permition_url(Permition.last)
  end

  test "should show permition" do
    get permition_url(@permition)
    assert_response :success
  end

  test "should get edit" do
    get edit_permition_url(@permition)
    assert_response :success
  end

  test "should update permition" do
    patch permition_url(@permition), params: { permition: { can_edit_categories: @permition.can_edit_categories, can_edit_game: @permition.can_edit_game, can_edit_role: @permition.can_edit_role, can_lock_user: @permition.can_lock_user, role_id: @permition.role_id } }
    assert_redirected_to permition_url(@permition)
  end

  test "should destroy permition" do
    assert_difference("Permition.count", -1) do
      delete permition_url(@permition)
    end

    assert_redirected_to permitions_url
  end
end
