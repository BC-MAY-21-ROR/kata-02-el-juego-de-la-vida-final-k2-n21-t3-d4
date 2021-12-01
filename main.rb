require './classes/grid.rb'
require './classes/cells.rb'

class Main

  puts "Number of rows:"
  row = gets.to_i
  puts "Number of columns:"
  col = gets.to_i

  drawing = Grid.new(col,row)
  cells = Cells.new

  if row <= 10 && row.positive? && col <= 10 && col.positive?
    puts 
    drawing.generate_matrix
    cells.generation(drawing.grid, drawing.grid2, row, col)
    puts 
    drawing.draw('grid')
    puts
    drawing.draw('grid2')
  else
    puts "Wrong values (Only values from 0 to 10 are allowed: ) "
  end
end