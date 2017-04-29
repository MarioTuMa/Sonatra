<<<<<<< HEAD
require "sinatra"

get "/" do
    File.read("index.html")
end

get "/offersfrombrad.json" do
  content_type :json
  File.read("offersfrombrad.json");
=======
require 'sinatra'
get '/txt' do
    'Put this in your pipe & smoke it!'
>>>>>>> origin/master
end
