# frozen_string_literal: true

require 'rails_helper'

RSpec.describe House, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:owner) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:rooms) }
    it { should validate_presence_of(:sqmt) }
    it { should validate_presence_of(:floors) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:image) }
  end
end
