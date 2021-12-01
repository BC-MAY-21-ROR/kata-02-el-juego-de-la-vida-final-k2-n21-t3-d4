require '../classes/grid'

# Testing for initialize method from grid class
RSpec.describe '#Initialize' do
  context "Initialize attr" do # Actions that the method will execute
    it "have to be Integer" do
      grid = Grid.new(3,5)
      expect(grid.grid2.length * grid.grid2[0].length).to eq 15
    end
  end
end

# Testing for generate_matrix method from grid class
RSpec.describe '#Generate matrix' do
  context "elements" do
    it "cannot be equal to nil" do
      grid = Grid.new(3,5)
      grid.generate_matrix
      grid.grid2.each do |row, col|
        expect(grid.grid2[row][col].class).to eq Integer
      end
    end
  end
end