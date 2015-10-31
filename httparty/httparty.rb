require 'sinatra'
require 'httparty'


get '/' do

  @responseX=HTTParty.get "http://mashable.com/stories.json"

  @title=@responseX['new'][1]["title"]

erb :home
end
