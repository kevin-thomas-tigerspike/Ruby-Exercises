require_relative '../Exercises/2-StockPicker/stock_picker'

describe 'Stock picker method' do
  it 'should return the days to buy and sell that return the most profit' do
    best_days = stock_picker([17,3,6,9,15,8,6,1,10])
    expect(best_days).to eq [1,4]
  end
  it 'should not be able to return a profit' do
    best_days = stock_picker([9,8,7,6,5,4,3])
    expect(best_days).to eq nil
  end
  it 'should gracefully fail if too few days are provided' do
    best_days = stock_picker([10])
    expect(best_days).to eq nil
  end
end