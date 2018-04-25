class Array

  def my_uniq
    uniqs = []
    self.each {|el| uniqs << el unless uniqs.include?(el)}
    uniqs
  end

  def two_sum
    result = []
    (0...self.length-1).each do |i|
      (i+1...self.length).each do |j|
        result << [i,j] if self[i] + self[j] == 0
      end
    end

    result
  end

  def my_transpose
    transposed = Array.new(self.length) {Array.new{[]}}
    (0...self.length).each do |i|
      self.each do |el|
        transposed[i] << el[i]
      end
    end
    transposed
  end

  def stock_picker
    stock = []
    sortedup = self.sort
    (self.length-1).downto(0).each do |max|
      (0...self.length).each do |min|
        return [self.index(sortedup[min]), self.index(sortedup[max])] if self.index(sortedup[min]) < self.index(sortedup[max])
      end
      sortedup.pop
    end
  end
end


class TowersofHanoi
  attr_accessor :grid
  def initialize
    @grid = Array.new(3) { [] }
  end

  def set_first_stack
      @grid[0] = [3,2,1]
  end

  def move(from_tower, to_tower)
    raise "Illegal move" if @grid[from_tower].empty?
    raise "Illegal move" if @grid[from_tower].last <  @grid[to_tower].first
    @grid[to_tower] << @grid[from_tower].pop
  end
end
