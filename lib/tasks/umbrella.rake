task(:umbrella) do

ENV.fetch("DARKSKY_API_KEY")
ENV.fetch("GEOCODING_API_KEY")

place_input = "seattle"
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
hourly = weather_parsed_file.fetch("hourly")
data_temp = hourly.fetch("data")
now = data_temp[0]
h_temp = now.fetch("temperature")

n = 0

while n < 12
  if data_temp[n].fetch("precipProbability") < 0.50
  n = n+1
  p data_temp[n].fetch("precipProbability")
  p n
  elsif 
    p "Bring an Umbrella!"
  end
end
  

p "The current temperature is #{c_temp} degrees at your location #{lat},#{lng}."
p "The temperature outlook for the next hour is #{h_temp} degrees."


end