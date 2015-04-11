require_relative '../Exercises/4-Pitch/pitch'

describe 'Converting pitch classes' do
  it 'should convert plain letters' do
    expect(pitch_class('D')).to eq 2
  end

  it 'should convert sharps' do
    expect(pitch_class('D#')).to eq 3
  end

  it 'should convert flats' do
    expect(pitch_class('Ab')).to eq 8
  end
end