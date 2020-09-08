require 'rails_helper'

RSpec.describe "complex_buildings/show", type: :view do
  before(:each) do
    @complex_building = assign(:complex_building, ComplexBuilding.create!(
      owner: "Owner",
      address: "Address",
      units: 2,
      sqmt: 3,
      price: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Owner/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/9.99/)
  end
end
