require 'httparty'
require 'model/panda'

class AnimalServiceClient
  include HTTParty
  base_uri 'http://animal-service.com'

  def get_panda
    name = JSON.parse(self.class.get("/panda").body)
    Panda.new(name)
  end
end