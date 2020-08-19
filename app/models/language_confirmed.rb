class LanguageConfirmed < ApplicationRecord
  belongs_to :language
  belongs_to :confirmed
end
