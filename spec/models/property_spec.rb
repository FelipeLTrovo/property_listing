require 'rails_helper'

RSpec.describe Property, type: :model do
  subject { build(:property) }
  
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to have_many_attached(:photos) }
end
