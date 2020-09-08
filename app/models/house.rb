# frozen_string_literal: true

class House < ApplicationRecord
  mount_uploaders :image, ImageUploader
end
