require 'sinatra'

get '/' do
  erb :home
end

get '/parrot' do
  @string = params[:sentence]
  puts @string #Use for debugging
  if @string=="" #(or @string.empty?)
     redirect to('/')
    end

  erb :parrot
end
