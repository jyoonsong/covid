class Confirmed < ApplicationRecord
    belongs_to :si, optional: true

    has_many :language_confirmeds

    def identified
        if (self.routeIdentified)
            return "Y"
        else
            return "N"
        end
    end
end
