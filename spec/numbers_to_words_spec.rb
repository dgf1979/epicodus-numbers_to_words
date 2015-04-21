require "rspec"
require "numbers_to_words"
require "pry"

describe('numbers to words') do

  it('converts a number to its word equivilent') do
    expect("1".numbers_to_words()).to(eq("one"))
  end

  it('converts a two-digit number to its word equivilent') do
    expect("31".numbers_to_words()).to(eq("thirty-one"))
  end

  it('converts a three-digit number to its word equivilent') do
    expect("145".numbers_to_words()).to(eq("one-hundred-fourty-five"))
  end

  it('adds commas in the corredt places into a number') do
    expect("1222".numbers_to_words()).to(eq("one thousand two-hundred-twenty-two"))
  end

  it('converts a two digit number in the TEENS to its word equivilent') do
    expect("15".numbers_to_words()).to(eq("fifteen"))
  end

  it('converts 0 to its word equivilent') do
    expect("0".numbers_to_words()).to(eq("zero"))
  end


 it('converts a 15 digit number in the TEENS to its word equivilent') do
   expect("999999999999".numbers_to_words()).to(eq("nine-hundred-ninety-nine billion nine-hundred-ninety-nine million nine-hundred-ninety-nine thousand nine-hundred-ninety-nine"))
end
end
