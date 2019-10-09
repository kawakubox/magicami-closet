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
      it do
        dress_1 = create(:dress)
        create(:skill, dress: dress_1, number: 1)
        skill_1 = build(:skill, dress: dress_1, number: 1)
        expect(skill_1).to be_invalid

        dress_2 = create(:dress)
        skill_2 = build(:skill, dress: dress_2, number: 1)
        expect(skill_2).to be_valid
      end
    end
  end
end
