#Une requête "GET" (à ne pas confondre avec gets) consiste à appeler depuis votre programme une adresse url
require "open url"
require "json"

loop do
puts "Entrez un code barre"
bar_code = gets.chomp

url = "http://fr.openfoodfacts.org/api/v0/produit/#{bar_code}.json"

json = open(url).read
data = JSON.parse(json)

puts data ['product']['product_name']
end