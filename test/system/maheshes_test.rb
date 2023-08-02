require "application_system_test_case"

class MaheshesTest < ApplicationSystemTestCase
  setup do
    @mahesh = maheshes(:one)
  end

  test "visiting the index" do
    visit maheshes_url
    assert_selector "h1", text: "Maheshes"
  end

  test "creating a Mahesh" do
    visit maheshes_url
    click_on "New Mahesh"

    fill_in "Age", with: @mahesh.age
    fill_in "Name", with: @mahesh.name
    click_on "Create Mahesh"

    assert_text "Mahesh was successfully created"
    click_on "Back"
  end

  test "updating a Mahesh" do
    visit maheshes_url
    click_on "Edit", match: :first

    fill_in "Age", with: @mahesh.age
    fill_in "Name", with: @mahesh.name
    click_on "Update Mahesh"

    assert_text "Mahesh was successfully updated"
    click_on "Back"
  end

  test "destroying a Mahesh" do
    visit maheshes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mahesh was successfully destroyed"
  end
end
