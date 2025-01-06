require "application_system_test_case"

class ProduktsTest < ApplicationSystemTestCase
  setup do
    @produkt = produkts(:one)
  end

  test "visiting the index" do
    visit produkts_url
    assert_selector "h1", text: "Produkts"
  end

  test "should create produkt" do
    visit produkts_url
    click_on "New produkt"

    fill_in "Barva", with: @produkt.barva
    fill_in "Cena", with: @produkt.cena
    fill_in "Obrazek", with: @produkt.obrazek
    fill_in "Popis", with: @produkt.popis
    fill_in "Velikost", with: @produkt.velikost
    click_on "Create Produkt"

    assert_text "Produkt was successfully created"
    click_on "Back"
  end

  test "should update Produkt" do
    visit produkt_url(@produkt)
    click_on "Edit this produkt", match: :first

    fill_in "Barva", with: @produkt.barva
    fill_in "Cena", with: @produkt.cena
    fill_in "Obrazek", with: @produkt.obrazek
    fill_in "Popis", with: @produkt.popis
    fill_in "Velikost", with: @produkt.velikost
    click_on "Update Produkt"

    assert_text "Produkt was successfully updated"
    click_on "Back"
  end

  test "should destroy Produkt" do
    visit produkt_url(@produkt)
    click_on "Destroy this produkt", match: :first

    assert_text "Produkt was successfully destroyed"
  end
end
