class Recipe
 include HTTParty

 #key_value = ENV['FOOD2FORK_KEY'] || "7089b2cf67c045c12bae38dd9a0c45e4", q: "chocolate"
 hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
 base_uri "http://#{hostport}/api"
default_params key: ENV["FOOD2FORK_KEY"] || "7089b2cf67c045c12bae38dd9a0c45e4", q: "mocha"
 format :json

 def self.for(keyword)
   
   get("/search", query: {q: keyword})["recipes"]
 end
end