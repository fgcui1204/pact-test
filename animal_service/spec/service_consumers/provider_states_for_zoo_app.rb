require 'sequel'
require 'db'
require 'animal_repository'

Pact.provider_states_for "Zoo App" do
  provider_state "a panda exists" do
    no_op
  end
end