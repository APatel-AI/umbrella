puts "Welcome Umbrella? ☔️"



require "http"

pirate_weather_api_key = ENV.fetch("PIRATE_WEATHER_KEY")

# Assemble the full URL string by adding the first part, the API token, and the last part together
pirate_weather_url = "https://api.pirateweather.net/forecast/" + pirate_weather_api_key + "/41.8887,-87.6355"



raw_pirate_weather_data = HTTP.get(pirate_weather_url)

parsed_pirate_weather_data = JSON.parse(raw_pirate_weather_data)

currently_hash = parsed_pirate_weather_data.fetch("currently")

current_temp = currently_hash.fetch("temperature")

puts "It is currently #{current_temp}°F."
