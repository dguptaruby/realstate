# frozen_string_literal: true

# House class
class House < ApplicationRecord
  validates_presence_of :owner, :address, :rooms, :sqmt
  validates_presence_of :floors, :price, :image
  mount_uploaders :image, ImageUploader
end
