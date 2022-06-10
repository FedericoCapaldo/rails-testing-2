require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url

    save_screenshot
    assert_selector "h1", text: "Awesome Products"

  end

  test "checking the correct number of product on index page" do
    visit root_url

    assert_selector ".card-product", count: Product.count
  end
end
