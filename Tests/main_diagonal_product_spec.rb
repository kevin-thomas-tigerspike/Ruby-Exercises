require_relative '../Exercises/7-MainDiagonalProduct/main_diagonal_product'

describe 'Calculate the main diagonal product' do
  it 'should return the main diagonal product' do
    expect(main_diagonal_product([[1,0],[0,1]])).to equal 1
    expect(main_diagonal_product([[1,2,3],[4,5,6],[7,8,9]])).to equal 45
    expect(main_diagonal_product([[1,2,3],[4,5,6],[7,8,9],[20,30,40]])).to equal 45
    expect(main_diagonal_product([[20,30],[40,50],[60,70],[80,90]])).to equal 1000
  end
end