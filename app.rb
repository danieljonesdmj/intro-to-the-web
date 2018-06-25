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

get '/random-cat' do
  @cat_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @cat_name = params[:name]
  @colour = params[:color]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end
