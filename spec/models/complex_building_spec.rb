# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ComplexBuilding, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:owner) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:units) }
    it { should validate_presence_of(:sqmt) }
    it { should validate_presence_of(:price) }
  end
end
