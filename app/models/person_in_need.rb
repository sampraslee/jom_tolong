class PersonInNeed < ApplicationRecord
    has_many :helps

    accepts_nested_attributes_for :helps
end
