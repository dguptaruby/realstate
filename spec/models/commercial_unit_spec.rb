# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CommercialUnit, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:owner) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:shops) }
    it { should validate_presence_of(:sqmt) }
    it { should validate_presence_of(:parking) }
    it { should validate_presence_of(:price) }
  end
end
