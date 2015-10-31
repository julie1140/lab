
class ChiliandlimeController < ApplicationController
  def home
  end


  def index
  end

  def search
  end


#This pulls the params for user's address input and uses Geocoder's near method
#to grab locations that are 1 mile from user's address input. If not found,
#spits out all locations of fruit vendors

  def results
       @location = Location.all
     if params[:spot].present?
       @fruits =Location.near(params[:spot], 5)
     else
       @fruits = Location.all
     end
  end
end
