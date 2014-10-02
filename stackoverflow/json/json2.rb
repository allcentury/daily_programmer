require 'expedia'
require 'json'
require 'pry'
api = Expedia::Api.new
response = api.get_information({:hotelId => '106347'}) 
data = response.body
parsed = JSON.parse(data.to_json)

thumbnail = parsed['HotelInformationResponse']['HotelImages']['HotelImage'][0]['thumbNailUrl']
binding.pry

