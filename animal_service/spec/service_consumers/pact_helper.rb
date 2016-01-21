require 'pact/provider/rspec'

Pact.service_provider "Animal Service" do
  honours_pact_with 'Zoo App' do
    pact_uri '../zoo-app/spec/pacts/zoo_app-animal_service.json'
  end
end

Pact.provider_states_for "Zoo App" do

  provider_state "an panda exists" do
    no_op
  end
end