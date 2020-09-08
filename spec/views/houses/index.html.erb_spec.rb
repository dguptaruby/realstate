require 'rails_helper'

RSpec.describe "houses/index", type: :view do
  before(:each) do
    assign(:houses, [
      House.create!(
        owner: "Owner",
        address: "Address",
        rooms: 2,
        sqmt: 3,
        floors: 4,
        air_cond: false,
        price: "9.99"
      ),
      House.create!(
        owner: "Owner",
        address: "Address",
        rooms: 2,
        sqmt: 3,
        floors: 4,
        air_cond: false,
        price: "9.99"
      )
    ])
  end

  it "renders a list of houses" do
    render
    assert_select "tr>td", text: "Owner".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
  end
end
