

class Recipes
  include HTTParty
  ENV["FOOD2FORK_KEY"] = "4bb26e2e04c407f9b9811117bf7ad9e9"

  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  base_uri "http://#{hostport}/api"
  default_params key: ENV["FOOD2FORK_KEY"]
  format :json

  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end