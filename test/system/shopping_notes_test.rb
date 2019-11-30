require "application_system_test_case"

class ShoppingNotesTest < ApplicationSystemTestCase
  setup do
    @shopping_note = shopping_notes(:one)
  end

  test "visiting the index" do
    visit shopping_notes_url
    assert_selector "h1", text: "Shopping Notes"
  end

  test "creating a Shopping note" do
    visit shopping_notes_url
    click_on "New Shopping Note"

    fill_in "Body", with: @shopping_note.body
    fill_in "Title", with: @shopping_note.title
    click_on "Create Shopping note"

    assert_text "Shopping note was successfully created"
    click_on "Back"
  end

  test "updating a Shopping note" do
    visit shopping_notes_url
    click_on "Edit", match: :first

    fill_in "Body", with: @shopping_note.body
    fill_in "Title", with: @shopping_note.title
    click_on "Update Shopping note"

    assert_text "Shopping note was successfully updated"
    click_on "Back"
  end

  test "destroying a Shopping note" do
    visit shopping_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shopping note was successfully destroyed"
  end
end
