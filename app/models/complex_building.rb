# frozen_string_literal: true

# Complex buildings class
class ComplexBuilding < ApplicationRecord
  validates_presence_of :owner, :address, :sqmt
  validates_presence_of :units, :price
end
