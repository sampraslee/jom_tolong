class User < ApplicationRecord
    has_many :helps, inverse_of: :user
    accepts_nested_attributes_for :helps

    # before_save :valid_phone_number?

    def valid_confirmation_code?(code, country_code, phone_number)
        response = Authy::PhoneVerification.check(verification_code: code, country_code: country_code, phone_number: phone_number)
        response.success?
    end

    def valid_phone_number?
        response = Authy::PhoneVerification.start(country_code: +6, phone_number: self.phone_number)
        response.success?
    end
end
