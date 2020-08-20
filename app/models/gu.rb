class Gu < ApplicationRecord
    belongs_to :si

    has_many :dongs
    has_many :confirmeds, through: :dongs

    has_many :language_gus
end
