require 'sinatra/base'
require_relative 'animal_repository'
require 'json'

class Api < Sinatra::Base

  set :raise_errors, false
  set :show_exceptions => false

  get('/panda') do
    content_type :json
    AnimalRepository.get_panda.to_json
  end
end
