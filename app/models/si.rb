class Si < ApplicationRecord
    has_many :language_sis
    
    has_many :gus
    has_many :dongs, through: :gus
    
    has_many :confirmeds
end
