class HomeController < ApplicationController
  def index
    @houses = House.all
    @complex_buildings = ComplexBuilding.all
    @commercial_units = CommercialUnit.all
  end
end
