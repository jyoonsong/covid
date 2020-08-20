class Gu < ApplicationRecord
    has_many :language_gus

    has_many :dongs
    belongs_to :si
end
