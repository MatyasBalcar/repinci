class Order < ApplicationRecord
  belongs_to :produkt
  validates :produkt, :quantity,:address, presence: true

end
