=begin

Write a Sinatra app that does the following:

On the homepage, provide the user a form to input their Zipcode.
On the Forecast page, show the user the current temperature and a list of the hourly forecast for their area.
In the hourly forecast, include the temperature and whether it will be cloudy or no (cloudyCover > 50%)
In the hourly list, also include the Pantscast for each hour. We are also adding a new feature: Umbrellacast 5000!
Pantscast: Pants if the hourly temperature is below 70, otherwise Shorts. Exception: Pants if the chance of rain is above 60%.
Umbrellacast 5000: Umbrella yes if the hourly change of rain is above 60%, otherwise no.
Use Forecastio for weather and Zippopotamus for zip to lat/lng info

=end

#Grab longitude and latitude from Zippopotamus and feed this to forecast.io
#Use params to do this?

require 'sinatra'
require 'httparty'
require 'date'

get '/' do
  erb :home
end

get '/zipcode' do

@zip = params[:zippy]
@hippo = HTTParty.get("http://api.zippopotam.us/us/#{@zip}").parsed_response
@place = @hippo["places"]
@city = @place[0]["place name"]
@longitude = @place[0]["longitude"]
@latitude = @place[0]["latitude"]

@forecast = HTTParty.get("https://api.forecast.io/forecast/b6ec16c6daf2eaa642175d3a5d80d219/#{@latitude},#{@longitude}").parsed_response
@temperature = @forecast["currently"]["temperature"]
@hourly_forecast = @forecast["hourly"]["data"]
@hourly_time = @forecast["hourly"]["data"]

  erb :forecast
end
