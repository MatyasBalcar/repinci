class Produkt < ApplicationRecord
  validates :cena, presence:true ,numericality: {greater_than_or_equal_to: 0}
  validates :velikost, presence: true
  validates :nazev, presence: true
  validates :popis, presence: true
  validates :pocet, presence: true, numericality: {greater_than_or_equal_to: 0}

  has_one_attached :obrazek
end
