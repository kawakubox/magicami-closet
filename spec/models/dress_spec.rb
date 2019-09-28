# frozen_string_literal: true

RSpec.describe Dress, type: :model do
  let(:dress) { build(:dress) }

  it { expect(dress).to be_valid }
  it { expect(dress).to be_respond_to(:heroine) }
end
