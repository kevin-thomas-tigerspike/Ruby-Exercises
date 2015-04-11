require_relative '../Exercises/5-GridBlast/grid_blast'

describe 'Return the grid location name' do
  it 'should return nil for invalid input' do
    expect(fire("a",0)).to equal nil
    expect(fire(0,"b")).to equal nil
    expect(fire(-1,1)).to equal nil
    expect(fire(1,-1)).to equal nil
  end

  it 'should return the correct grid location name' do
    expect(fire(0,0)).to eq("top left")
    expect(fire(1,0)).to eq("top middle")
    expect(fire(2,0)).to eq("top right")
    expect(fire(0,1)).to eq("middle left")
    expect(fire(1,1)).to eq("center")
    expect(fire(2,1)).to eq("middle right")
    expect(fire(0,2)).to eq("bottom left")
    expect(fire(1,2)).to eq("bottom middle")
    expect(fire(2,2)).to eq("bottom right")
  end

end