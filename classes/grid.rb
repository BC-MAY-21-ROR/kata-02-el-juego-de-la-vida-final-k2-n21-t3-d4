class Grid

  attr_accessor :grid, :grid2, :row, :col

  def initialize(c, r)
    @col = c
    @row = r
    @grid = Array.new(@col){ Array.new(@row) }
    @grid2 = Array.new(@col){ Array.new(@row) }
  end

  def generate_matrix
    (0..(@row-1)).each do |r|
      (0..(@col-1)).each do |c|
        num = rand(4)
        @grid2[c][r] = 0
        if num == 0
          @grid[c][r] = 1
        else
          @grid[c][r] = 0
        end
      end
    end
  end

  def draw(g)

    if(g === "grid")
      for i in(0..(@row-1))
        for j in (0..(@col-1))
          if @grid[j][i] == 1
            @grid[j][i] = '*'
          else
            @grid[j][i] = '.'
          end
        end
      end

      for i in(0..(@row-1))
        for j in (0..(@col-1))
          print @grid[j][i]
        end
        puts
      end
    else
      for i in(0..(@row-1))
        for j in (0..(@col-1))
          if @grid2[j][i] == 1
            @grid2[j][i] = '*'
          else
            @grid2[j][i] = '.'
          end
        end
      end

      for i in(0..(@row-1))
        for j in (0..(@col-1))
          print @grid2[j][i]
        end
        puts
      end
    end
  end
end