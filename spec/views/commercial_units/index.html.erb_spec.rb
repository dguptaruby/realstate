require 'rails_helper'

RSpec.describe "commercial_units/index", type: :view do
  before(:each) do
    assign(:commercial_units, [
      CommercialUnit.create!(
        owner: "Owner",
        address: "Address",
        shops: 2,
        sqmt: 3,
        parking: 4,
        price: "9.99"
      ),
      CommercialUnit.create!(
        owner: "Owner",
        address: "Address",
        shops: 2,
        sqmt: 3,
        parking: 4,
        price: "9.99"
      )
    ])
  end

  it "renders a list of commercial_units" do
    render
    assert_select "tr>td", text: "Owner".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
  end
end
