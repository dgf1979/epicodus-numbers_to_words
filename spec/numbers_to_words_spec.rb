require "rspec"
require "numbers_to_words"
require "pry"

describe('numbers to words') do

  it('converts a number to its word equivilent') do
    expect("1".numbers_to_words()).to(eq("one"))
  end

  it('converts a two-digit number to its word equivilent') do
    expect("21".numbers_to_words()).to(eq("twenty-one"))
  end

  it('converts a three-digit number to its word equivilent') do
    expect("121".numbers_to_words()).to(eq("one-hundred-twenty-one"))
  end

  it('adds commas in the corredt places into a number') do
    expect("1222".format_number()).to(eq("1,222"))
  end
end
