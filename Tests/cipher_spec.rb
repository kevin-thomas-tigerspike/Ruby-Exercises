require_relative '../Exercises/1-CaesarCipher/cipher'

describe 'Encrypting letters using a Caesar cipher' do
  it 'should encrypt lowercase letters' do
    expect(caeser_cipher('abcdef',5)).to eq "fghijk"
  end

  it 'should encrypt uppercase letters' do
    expect(caeser_cipher('ABCDEF',10)).to eq "KLMNOP"
  end

  it 'should not encrypt non alpha characters' do
    expect(caeser_cipher('The ship sails at 08:00 on 1 September, 2015',20)).to eq "Nby mbcj mucfm un 08:00 ih 1 Myjnygvyl, 2015"
  end

end