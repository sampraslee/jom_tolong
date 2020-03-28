class Help < ApplicationRecord
    belongs_to :person_in_need
    belongs_to :district, optional: true

    enum help_type: [:food, :essentials, :volunteer, :financial]
end
