task(:umbrella) do
p "hai doggie"

map_url = ("https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=AIzaSyDB6uZXmYRlo88RLhAxD-yxUbMIZd4oHpg")
p map_raw_file = open(map_url).read

latitude = some decimal number
longitude = some decimal number 

(replace address in google api thing with )

  # # ENV.fetch("DARKSKY_API_KEY")
  # # weather_url = "https://api.darksky.net/forecast/" + ENV.fetch("DARKSKY_API_KEY") + "/40.737957,-74.007082"
  # weather_url = "https://api.darksky.net/forecast/26f63e92c5006b5c493906e7953da893/41.8887,-87.6355"
  # weather_raw_file = open(weather_url).read
  # weather_parsed_file = JSON.parse(weather_raw_file)



  # # FETCH CURRENT TEMPERATURE
  # currently = weather_parsed_file.fetch("currently")
  # ap currently.fetch("temperature")
end


# weather_raw_file = open("https://api.darksky.net/forecast/26f63e92c5006b5c493906e7953da893/41.8887,-87.6355").read


# weather_parsed_file = JSON.parse(weather_raw_file)

# ap weather_parsed_file

  # ap weather_parsed_file.class
  # ap weather_parsed_file.keys
  # ap weather_parsed_file.fetch("currently")