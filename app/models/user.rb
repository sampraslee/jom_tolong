class User < ApplicationRecord
    has_many :helps, inverse_of: :user
    accepts_nested_attributes_for :helps
end
