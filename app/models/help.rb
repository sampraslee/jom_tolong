class Help < ApplicationRecord
    belongs_to :person_in_need
    belongs_to :district

    enum help_type: [:food, :essentials, :volunteer, :financial]
end
