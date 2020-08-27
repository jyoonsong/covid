class Dong < ApplicationRecord
    belongs_to :gu

    belongs_to :si

    has_many :language_dongs
end
