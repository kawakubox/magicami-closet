# frozen_string_literal: true

RSpec.describe do
  describe 'heroine' do
    let(:query) do
      <<-GRAPHQL
        query {
          heroine(id: 1) {
            birthday
            bloodType
            bust
            familyName
            firstName
            height
            hip
            waist
            weight
          }
        }
      GRAPHQL
    end

    subject do
      result = MagicamiClosetSchema.execute(query)
      result['data']['heroine']
    end

    its(['firstName']) { is_expected.to be_present }
    its(['familyName']) { is_expected.to be_present }
    its(['birthday']) { is_expected.to be_present }
    its(['bloodType']) { is_expected.to be_present }
    its(['height']) { is_expected.to be_present }
    its(['weight']) { is_expected.to be_present }
    its(['bust']) { is_expected.to be_present }
    its(['waist']) { is_expected.to be_present }
    its(['hip']) { is_expected.to be_present }
  end
end
