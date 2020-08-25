class Confirmed < ApplicationRecord
    belongs_to :dong, optional: true

    belongs_to :gu, optional: true
    belongs_to :si, optional: true

    has_many :language_confirmeds

    def residence(language_id)
        result = ""

        if (!self.gu.nil?)
            language_gu = LanguageGu.find_by(language_id: language_id, gu_id: self.gu.id)
            if (!language_gu.nil?)
                result += language_gu.name + " "
            end
        end

        if (!self.dong_id.nil?)
            language_dong = LanguageDong.find_by(language_id: language_id, dong_id: self.dong_id)
            if (!language_dong.nil?)
                result += language_dong.name
            end
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
