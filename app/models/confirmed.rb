class Confirmed < ApplicationRecord
    belongs_to :dong, optional: true

    belongs_to :gu, optional: true
    belongs_to :si, optional: true

    has_many :language_confirmeds

    def residence(language_id)
        result = ""

        if (!self.gu.nil?)
            result += LanguageGu.find_by(language_id: language_id, gu_id: self.gu.id).name + " "
        end

        if (!self.dong_id.nil?)
            result += LanguageDong.find_by(language_id: language_id, dong_id: self.dong_id).name
        end

        return result
    end

    def identified
        if (self.routeIdentified)
            return "Y"
        else
            return "N"
        end
    end
end
