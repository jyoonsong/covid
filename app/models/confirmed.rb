class Confirmed < ApplicationRecord
    has_many :language_confirmeds

    belongs_to :dong
end
