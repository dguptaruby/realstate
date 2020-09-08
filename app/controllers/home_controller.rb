# frozen_string_literal: true

class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @houses = House.all
    @complex_buildings = ComplexBuilding.all
    @commercial_units = CommercialUnit.all
  end
end
