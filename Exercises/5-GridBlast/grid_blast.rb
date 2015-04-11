$grid = ['top left',    'top middle',    'top right',
         'middle left', 'center',        'middle right',
         'bottom left', 'bottom middle', 'bottom right']

def fire(x,y)
  $grid[x + y*3]
end