require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  'This is top secret'
end

get '/tea/coffee' do
  'I like to drink english breakast tea and coffee'
end

get '/water' do
  'water keeps me alive'
end

get '/cat' do
  "<div style='border: 3px dashed red'>
  <img src ='http://bit.ly/1eze8aE'>
  </div>"
end
