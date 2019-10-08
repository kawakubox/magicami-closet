# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Skill, type: :model do
  let(:skill) { build(:skill) }

  it { expect(skill).to be_respond_to(:skill_variables) }

  describe 'validation' do
    subject { skill }

    it { is_expected.to be_valid }
    it { is_expected.to be_valid_on(:name).with('a' * 16) }
    it { is_expected.to be_invalid_on(:name).with('a' * 17) }
    it { is_expected.to be_invalid_on(:number).with(0) }
    it { is_expected.to be_invalid_on(:number).with(4) }
    it { is_expected.to be_invalid_on(:max_level).with(0) }
    it { is_expected.to be_invalid_on(:max_level).with(10) }

    describe 'Unique Constraint' do
      let(:dresses) { create_list(:dress, 2) }
      before { create(:skill, dress: dresses[0], name: 'スキル') }
      subject { build(:skill, dress: dresses[0], name: 'スキル') }
      it do
        is_expected.to be_invalid
        subject.dress_id = dresses[1].id
        is_expected.to be_valid
      end
    end
  end
end
