require "spec_helper"
RSpec.describe Stringer do
  it "concatenates undefined number of strings with a space" do
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end

  it "sets the length of a string at a certain length" do
    expect(Stringer.minify("Hello, I'm learning how to make a gem", 10)).to eq("Hello, I'm")
    expect(Stringer.minify"Hello", 10).to eq("Hello)
  end

  it "Parameters string iterates over a string and replaces each instance of that word with the replacement" do
  	expect(Stringer.replacify"I can't do this","can't","can").to eq("I can do this")
  end

  it "Parameters string iterates over a string and each word into an array returnin the array" do
  	expect(Stringer.tokenize "I love to code").to eq(["I","love","to","code"])
  end

  it "Parameters string and word to remove remove each instance of the second parameter" do
  	expect(Stringer.removify"I'm not a developer", "not").to eq("I'm a developer")
  end

end
