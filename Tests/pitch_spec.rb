require_relative '../Exercises/4-Pitch/pitch'

describe 'Converting pitch classes' do
  it 'should convert plain letters' do
    expect(pitch_class('C')).to equal 0
    expect(pitch_class('D')).to equal 2
    expect(pitch_class('E')).to equal 4
    expect(pitch_class('F')).to equal 5
    expect(pitch_class('G')).to equal 7
    expect(pitch_class('A')).to equal 9
    expect(pitch_class('B')).to equal 11

  end

  it 'should convert sharps' do
    expect(pitch_class('C#')).to equal 1
    expect(pitch_class('D#')).to equal 3
    expect(pitch_class('E#')).to equal 5
    expect(pitch_class('F#')).to equal 6
    expect(pitch_class('G#')).to equal 8
    expect(pitch_class('A#')).to equal 10
    expect(pitch_class('B#')).to equal 0
  end

  it 'should convert flats' do
    expect(pitch_class('Cb')).to equal 11
    expect(pitch_class('Db')).to equal 1
    expect(pitch_class('Eb')).to equal 3
    expect(pitch_class('Fb')).to equal 4
    expect(pitch_class('Gb')).to equal 6
    expect(pitch_class('Ab')).to equal 8
    expect(pitch_class('Bb')).to equal 10
  end
end