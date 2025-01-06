# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
# create admin
User.create!([name:"Matyas", email:"matyasbalcar0@gmail.com", password:"password123", password_confirmation:"password123"])

# sample prdocuts from google form
Produkt.create!([nazev:"Placky jemna jemnost",popis:"Placky jemne", barva:"Jemna", velikost:"Univerzalni" ,pocet: 15,cena: 25])
Produkt.create!([nazev:"Placky haji buci",popis:"Placky hajaci bucaci", barva:"Hajaci", velikost:"Univerzalni" ,pocet: 15,cena: 25])

Produkt.create!([nazev:"Repinkove ponozky (male)",popis:"Jemne male ponozky", barva:"Modra", velikost:"36-40" ,pocet: 15, cena:220])
Produkt.create!([nazev:"Repinkove ponozky (velke)",popis:"Jemne velke ponozky", barva:"Modra", velikost:"41-46" ,pocet: 15, cena:220])

Produkt.create!([nazev:"Nalepky",popis:"nalepky jemne", barva:"nalepkova", velikost:"Univerzalni" ,pocet: 15, cena:0])
