require "application_system_test_case"

class ArtipsTest < ApplicationSystemTestCase
  setup do
    @artip = artips(:one)
  end

  test "visiting the index" do
    visit artips_url
    assert_selector "h1", text: "Artips"
  end

  test "creating a Artip" do
    visit artips_url
    click_on "New Artip"

    fill_in "Content", with: @artip.content
    click_on "Create Artip"

    assert_text "Artip was successfully created"
    click_on "Back"
  end

  test "updating a Artip" do
    visit artips_url
    click_on "Edit", match: :first

    fill_in "Content", with: @artip.content
    click_on "Update Artip"

    assert_text "Artip was successfully updated"
    click_on "Back"
  end

  test "destroying a Artip" do
    visit artips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Artip was successfully destroyed"
  end
end
