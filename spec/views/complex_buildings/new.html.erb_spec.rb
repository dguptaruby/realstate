require 'rails_helper'

RSpec.describe "complex_buildings/new", type: :view do
  before(:each) do
    assign(:complex_building, ComplexBuilding.new(
      owner: "MyString",
      address: "MyString",
      units: 1,
      sqmt: 1,
      price: "9.99"
    ))
  end

  it "renders new complex_building form" do
    render

    assert_select "form[action=?][method=?]", complex_buildings_path, "post" do

      assert_select "input[name=?]", "complex_building[owner]"

      assert_select "input[name=?]", "complex_building[address]"

      assert_select "input[name=?]", "complex_building[units]"

      assert_select "input[name=?]", "complex_building[sqmt]"

      assert_select "input[name=?]", "complex_building[price]"
    end
  end
end
