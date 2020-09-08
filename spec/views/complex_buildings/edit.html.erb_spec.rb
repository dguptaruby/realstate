require 'rails_helper'

RSpec.describe "complex_buildings/edit", type: :view do
  before(:each) do
    @complex_building = assign(:complex_building, ComplexBuilding.create!(
      owner: "MyString",
      address: "MyString",
      units: 1,
      sqmt: 1,
      price: "9.99"
    ))
  end

  it "renders the edit complex_building form" do
    render

    assert_select "form[action=?][method=?]", complex_building_path(@complex_building), "post" do

      assert_select "input[name=?]", "complex_building[owner]"

      assert_select "input[name=?]", "complex_building[address]"

      assert_select "input[name=?]", "complex_building[units]"

      assert_select "input[name=?]", "complex_building[sqmt]"

      assert_select "input[name=?]", "complex_building[price]"
    end
  end
end
