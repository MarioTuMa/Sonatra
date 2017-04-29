require "sinatra"

get "/" do
    File.read("index.html")
end

get "/offersfrombrad.json" do
  content_type :json
  File.read("offersfrombrad.json");
end
