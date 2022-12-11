require "application_system_test_case"

class PermitionsTest < ApplicationSystemTestCase
  setup do
    @permition = permitions(:one)
  end

  test "visiting the index" do
    visit permitions_url
    assert_selector "h1", text: "Permitions"
  end

  test "should create permition" do
    visit permitions_url
    click_on "New permition"

    check "Can edit categories" if @permition.can_edit_categories
    check "Can edit game" if @permition.can_edit_game
    check "Can edit role" if @permition.can_edit_role
    check "Can lock user" if @permition.can_lock_user
    fill_in "Role", with: @permition.role_id
    click_on "Create Permition"

    assert_text "Permition was successfully created"
    click_on "Back"
  end

  test "should update Permition" do
    visit permition_url(@permition)
    click_on "Edit this permition", match: :first

    check "Can edit categories" if @permition.can_edit_categories
    check "Can edit game" if @permition.can_edit_game
    check "Can edit role" if @permition.can_edit_role
    check "Can lock user" if @permition.can_lock_user
    fill_in "Role", with: @permition.role_id
    click_on "Update Permition"

    assert_text "Permition was successfully updated"
    click_on "Back"
  end

  test "should destroy Permition" do
    visit permition_url(@permition)
    click_on "Destroy this permition", match: :first

    assert_text "Permition was successfully destroyed"
  end
end
