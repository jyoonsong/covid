class Dong < ApplicationRecord
    has_many :language_dongs

    has_many :confirmeds
    belongs_to :gu
end
