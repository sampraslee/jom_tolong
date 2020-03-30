class Help < ApplicationRecord
    belongs_to :person_in_need, inverse_of: :helps
    belongs_to :district

    enum help_type: [:food, :essentials, :volunteer, :financial]
    validates_presence_of :person_in_need
end
