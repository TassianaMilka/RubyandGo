#Crie uma api simples com require http.
#Para isso temo dados extras:
# da url("https://api.nasa.gov/neo/rest/v1/feed?start_date=2015-09-07&end_date=2015-09-08&api_key=DEMO_KEY")


require 'net/http'
require 'json'

# Link da API com os dados 
url = URI("https://api.nasa.gov/neo/rest/v1/feed?start_date=2015-09-07&end_date=2015-09-08&api_key=DEMO_KEY
")
res = Net::HTTP.get(url)
dados = JSON.parse(res)

puts dados["Dados API Nasa"]   
