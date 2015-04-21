require "rspec"
require "numbers_to_words"
require "pry"

describe('numbers to words') do

  it('converts a number to its word equivilent') do
    expect("1".numbers_to_words()).to(eq("one"))
  end



end
