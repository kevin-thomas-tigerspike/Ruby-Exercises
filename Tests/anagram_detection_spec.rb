require_relative '../Exercises/8-AnagramDetection/anagram_detection'

describe 'Anagram detection' do
  it 'should detect if one word is an anagram of another' do
    expect(is_anagram("Creative", "Reactive")).to equal true
    expect(is_anagram("Tom Marvolo Riddle", "I am Lord Voldemort")).to equal true
    expect(is_anagram("Buckethead", "Death Cube K")).to equal true
    expect(is_anagram("Edward Gorey", "E. G. Deadworry")).to equal true
    expect(is_anagram("The Morse Code", "Here Come Dots")).to equal true
    expect(is_anagram("A Domesticated Animal", "Docile, As A Man Tamed It")).to equal true
    expect(is_anagram("Geologists", "Go Get Oils")).to equal false
  end
end