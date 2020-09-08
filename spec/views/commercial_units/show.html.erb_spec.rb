require 'rails_helper'

RSpec.describe "commercial_units/show", type: :view do
  before(:each) do
    @commercial_unit = assign(:commercial_unit, CommercialUnit.create!(
      owner: "Owner",
      address: "Address",
      shops: 2,
      sqmt: 3,
      parking: 4,
      price: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Owner/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/9.99/)
  end
end
