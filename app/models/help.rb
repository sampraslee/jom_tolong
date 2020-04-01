class Help < ApplicationRecord
    belongs_to :user, inverse_of: :helps
    belongs_to :district

    enum help_type: [:food, :essentials, :volunteer, :financial]
    validates_presence_of :user
end