json.extract! produkt, :id, :cena, :obrazek, :popis, :velikost, :barva, :created_at, :updated_at
json.url produkt_url(produkt, format: :json)
