require_relative '../Exercises/9-SquareDigits/square_digits'

describe 'Square every digit of a number' do
  it 'should return an integer that represents the concatenated square of each digit of a number' do
    expect(square_digits(3212)).to equal 9414
    expect(square_digits(2112)).to equal 4114
    expect(square_digits(1111)).to equal 1111
    expect(square_digits(1234321)).to equal 14916941
    expect(square_digits(0)).to equal 0
  end
end