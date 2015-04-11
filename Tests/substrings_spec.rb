require_relative '../Exercises/3-Substrings/substrings'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

describe 'Substrings method' do

  it 'should return an alphabetically ordered hash of matched words and their frequency' do
    result = substrings("Howdy partner, sit down! How's it going?", dictionary)
    expect(result).to match({"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "i"=>3, "it"=>2, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1})
  end

  it 'should return an alphabetically ordered hash of matched words and their frequency' do
    result = substrings("below", dictionary)
    expect(result).to match({"below"=>1, "low"=>1})
  end

  it 'should not match any words and return an empty hash' do
    result = substrings("No words matched", dictionary)
    expect(result).to match({})
  end
end