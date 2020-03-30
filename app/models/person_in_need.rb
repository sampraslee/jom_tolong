class PersonInNeed < ApplicationRecord
    has_many :helps, inverse_of: :person_in_need
    accepts_nested_attributes_for :helps
end
