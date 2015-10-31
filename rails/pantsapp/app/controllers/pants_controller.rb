class PantsController < ApplicationController
  def index
  end

  def about
  end

  def forecast
  @zip=params[:zip]
  puts @zip.class #for debugging

  unless @zip=="" || @zip.length !=5
    @hippo=HTTParty.get("http://api.zippopotam.us/us/#{@zip}").parsed_response
    @state=@hippo["places"][0]["state"]
    @place=@hippo["places"][0]["place name"]
    @longitude=@hippo["places"][0]["longitude"]
    @latitude=@hippo["places"][0]["latitude"]

    @forecast = HTTParty.get("https://api.forecast.io/forecast/b6ec16c6daf2eaa642175d3a5d80d219/#{@latitude},#{@longitude}").parsed_response
    @daily=@forecast["daily"]["data"]
    @current=@forecast["currently"]["temperature"]
    @cloud=@forecast["currently"]["cloudCover"]

  else
    redirect_to "/", :notice => "Don't you listen?!" # redirect back to homepage and insert warning- See index.html.erb
  end



  end




  end
