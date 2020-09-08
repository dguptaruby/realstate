require 'rails_helper'

RSpec.describe "commercial_units/new", type: :view do
  before(:each) do
    assign(:commercial_unit, CommercialUnit.new(
      owner: "MyString",
      address: "MyString",
      shops: 1,
      sqmt: 1,
      parking: 1,
      price: "9.99"
    ))
  end

  it "renders new commercial_unit form" do
    render

    assert_select "form[action=?][method=?]", commercial_units_path, "post" do

      assert_select "input[name=?]", "commercial_unit[owner]"

      assert_select "input[name=?]", "commercial_unit[address]"

      assert_select "input[name=?]", "commercial_unit[shops]"

      assert_select "input[name=?]", "commercial_unit[sqmt]"

      assert_select "input[name=?]", "commercial_unit[parking]"

      assert_select "input[name=?]", "commercial_unit[price]"
    end
  end
end
