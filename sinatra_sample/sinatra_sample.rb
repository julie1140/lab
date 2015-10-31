require 'sinatra'
require 'httparty'

get '/first_story' do
  url = 'http://www.mashable.com/stories.json'
  parsed_mash = HTTParty.get(url).parsed_response

  new_stories = parsed_mash['new']
  @story = new_stories[0]

  erb :story
end

get '/second_story' do
  url = 'http://www.mashable.com/stories.json'
  parsed_mash = HTTParty.get(url).parsed_response

  new_stories = parsed_mash['new']
  @story = new_stories[1]

  # Two actions can use the same template
  # just make sure you use the same instance variable (@story here).
  # Try changing @story in one of them and see what happens.
  erb :story
end
