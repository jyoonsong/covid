class Language < ApplicationRecord
    has_many :language_confirmeds
    has_many :language_dongs
    has_many :language_gus
    has_many :language_sis
end
