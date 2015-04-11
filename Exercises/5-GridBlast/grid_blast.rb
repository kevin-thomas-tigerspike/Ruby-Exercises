def fire(x,y)
  grid = ['top left',    'top middle',    'top right',
          'middle left', 'center',        'middle right',
          'bottom left', 'bottom middle', 'bottom right']
  location = [[0,1,2],[0,3,6]]
  return nil unless (x.is_a? Integer) && (y.is_a? Integer) # error if not numbers
  return nil unless ((0..2).cover? x) && ((0..2).cover? y) # error if not between correct range
  grid[location[0][x.to_i]+location[1][y.to_i]]
end