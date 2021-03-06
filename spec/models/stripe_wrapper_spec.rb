require 'rails_helper'

RSpec.describe StripeWrapper, type: :model do
  let(:valid_token) do
    Stripe::Token.create(
      card: {
        number: '4242424242424242',
        exp_month: 6,
        exp_year: 2018,
        cvc: 314
      }
    ).id
  end

  let(:declined_card_token) do
    Stripe::Token.create(
      card: {
        number: '4000000000000002',
        exp_month: 6,
        exp_year: 2018,
        cvc: 314
      }
    ).id
  end

  describe StripeWrapper::Charge, :vcr do
    describe '.create' do
      it 'makes a successful charge' do
        response = StripeWrapper::Charge.create(
          amount: 999,
          card: valid_token,
          description: 'a valid charge'
        )
        expect(response).to be_successful
      end

      it 'makes a card declined charge' do
        response = StripeWrapper::Charge.create(
          amount: 999,
          card: declined_card_token,
          description: 'an invalid charge'
        )
        expect(response).not_to be_successful
      end

      it 'returns the error message for declined charges' do
        response = StripeWrapper::Charge.create(
          amount: 999,
          card: declined_card_token,
          description: 'an invalid charge'
        )
        expect(response.error_message).to eq('Your card was declined.')
      end
    end
  end
end
