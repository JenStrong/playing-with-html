require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "You found the treasure!"
end

get '/puppy' do
  "You've won a puppy!"
end

get '/danceparty' do
  "Dance! Dance! Dance!" * 1000
end

get '/smile' do
  ' :) ' * 10000
end

get '/random-cat' do
  @name = ["Ruby", "Sandi Meowtz"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/dog' do
  "<div style='border: 4px solid blue'>
    <img src='https://images.pexels.com/photos/356378/pexels-photo-356378.jpeg?auto=compress&cs=tinysrgb&h=350'>
  </div>"
end
