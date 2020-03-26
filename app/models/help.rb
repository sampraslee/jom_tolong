class Help < ApplicationRecord
    belongs_to :person_in_need

    enum help_type: [:food, :essentials, :volunteer, :financial]
end
