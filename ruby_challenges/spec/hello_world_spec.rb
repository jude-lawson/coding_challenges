require 'spec_helper'
require './lib/hello_world'

RSpec.describe Greeter do
  it 'should be able to say \'Hello, World!\'' do
    expect(Greeter.hello_world).to eq('Hello, World!')
  end

  it 'should be able to say hello to Phineas' do
    expect(Greeter.hello_world('Phineas')).to eq('Hello, Phineas!')
  end
end
