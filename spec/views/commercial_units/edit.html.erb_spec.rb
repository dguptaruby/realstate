require 'rails_helper'

RSpec.describe "commercial_units/edit", type: :view do
  before(:each) do
    @commercial_unit = assign(:commercial_unit, CommercialUnit.create!(
      owner: "MyString",
      address: "MyString",
      shops: 1,
      sqmt: 1,
      parking: 1,
      price: "9.99"
    ))
  end

  it "renders the edit commercial_unit form" do
    render

    assert_select "form[action=?][method=?]", commercial_unit_path(@commercial_unit), "post" do

      assert_select "input[name=?]", "commercial_unit[owner]"

      assert_select "input[name=?]", "commercial_unit[address]"

      assert_select "input[name=?]", "commercial_unit[shops]"

      assert_select "input[name=?]", "commercial_unit[sqmt]"

      assert_select "input[name=?]", "commercial_unit[parking]"

      assert_select "input[name=?]", "commercial_unit[price]"
    end
  end
end
