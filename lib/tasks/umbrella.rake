task(:umbrella) do
p "hai doggie"

ENV.fetch("DARKSKY_API_KEY")
ENV.fetch("GEOCODING_API_KEY")

place_input = "merchandise mart"
user_address = place_input.gsub(" ", "%20")


map_url = ("https://maps.googleapis.com/maps/api/geocode/json?address=" + user_address + "&key=" + ENV.fetch("GEOCODING_API_KEY"))
map_url
map_raw_file = open(map_url).read
map_parsed_file = JSON.parse(map_raw_file)

#FETCH LATITUDE LONGITUDE
r = map_parsed_file.fetch("results")
# ap r[0].keys
r_0 = r[0].fetch("geometry")
location = r_0.fetch("location")
lat = location.fetch("lat").to_s
lng = location.fetch("lng").to_s


            #           "geometry" => {
            #          "location" => {
            #         "lat" => 41.8889772,
            #         "lng" => -87.6339836


weather_url = ("https://api.darksky.net/forecast/" + ENV.fetch("DARKSKY_API_KEY") + "/" + lat + "," + lng)
weather_raw_file = open(weather_url).read
weather_parsed_file = JSON.parse(weather_raw_file)

  # FETCH CURRENT TEMPERATURE
currently = weather_parsed_file.fetch("currently")
c_temp = currently.fetch("temperature")

# fetch hourly temp
p hourly = weather_parsed_file.fetch("hourly")
# p data_temp = hourly.fetch("data")
# p h_temp = data_temp.fetch("temperature").to_s

# #compute probability of rain
# p h_temp
# d_0 = hourly[0].fetch("temperature")

# p d_0




p "The current temperature is #{c_temp} at your location #{lat},#{lng}"
p "The temperature outlook for the next hour is #{h_temp}"





end