require 'spec_helper'
require './lib/coin_counter.rb'

RSpec.describe CoinCounter do
  it 'should return the smallest number of coins to fulfill the given dollar value' do
    expect(CoinCounter.smallest_combination('1.25')).to eq({quarters: 5})
    expect(CoinCounter.smallest_combination('1.26')).to eq({quarters: 5, pennies: 1})
    expect(CoinCounter.smallest_combination('10.00')).to eq({quarters: 40})
    expect(CoinCounter.smallest_combination('1.73')).to eq({quarters: 6, dimes: 2, pennies: 3})
  end
end
