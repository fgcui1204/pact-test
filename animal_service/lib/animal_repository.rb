require 'sequel'
require_relative 'db'

class AnimalRepository

  def self.get_panda
    panda = DB::DATABASE[:animals]
    panda.select(:name).first
  end
end