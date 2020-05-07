task(:umbrella) do
p "hai doggie"

ENV.fetch("DARKSKY_API_KEY")
ENV.fetch("GEOCODING_API_KEY")

user_location = "merchandise mart"

map_url = ("https://maps.googleapis.com/maps/api/geocode/json?address=" + user_location + "&key=" + ENV.fetch("GEOCODING_API_KEY")
map_raw_file = open(map_url).read
map_parsed_file = JSON.parse(map_raw_file)

#latitude = some decimal number
#longitude = some decimal number 

weather_url = "https://api.darksky.net/forecast/" + ENV.fetch("DARKSKY_API_KEY") + "/"" + latitude + "," + longitude + "
weather_raw_file = open(weather_url).read
weather_parsed_file = JSON.parse(weather_raw_file)


# (replace address in google api thing with)

 
  # weather_url = "https://api.darksky.net/forecast/26f63e92c5006b5c493906e7953da893/41.8887,-87.6355"




  # FETCH CURRENT TEMPERATURE
  currently = weather_parsed_file.fetch("currently")
  ap currently.fetch("temperature")
end