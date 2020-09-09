# frozen_string_literal: true

# Commercial units class
class CommercialUnit < ApplicationRecord
  validates_presence_of :owner, :address, :shops, :sqmt
  validates_presence_of :parking, :price
end
