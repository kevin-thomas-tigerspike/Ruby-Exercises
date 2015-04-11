require_relative '../Exercises/6-ListFiltering/list_filtering'

describe 'Filter strings from an array of non-negative integers and string' do
  it 'should filter strings from the array' do
    expect(filter_list([1,2,'a','b'])).to eq([1,2])
    expect(filter_list([1,'a','b',0,15])).to eq([1,0,15])
    expect(filter_list([1,2,'aasf','1','123',123])).to eq([1,2,123])
  end
end