require 'rails_helper'

RSpec.describe "houses/edit", type: :view do
  before(:each) do
    @house = assign(:house, House.create!(
      owner: "MyString",
      address: "MyString",
      rooms: 1,
      sqmt: 1,
      floors: 1,
      air_cond: false,
      price: "9.99"
    ))
  end

  it "renders the edit house form" do
    render

    assert_select "form[action=?][method=?]", house_path(@house), "post" do

      assert_select "input[name=?]", "house[owner]"

      assert_select "input[name=?]", "house[address]"

      assert_select "input[name=?]", "house[rooms]"

      assert_select "input[name=?]", "house[sqmt]"

      assert_select "input[name=?]", "house[floors]"

      assert_select "input[name=?]", "house[air_cond]"

      assert_select "input[name=?]", "house[price]"
    end
  end
end
