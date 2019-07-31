# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if self.length == 0
    return self.max - self.min
  end

  def average
    return nil if self.length == 0
    return self.sum/(self.length * 1.00)
  end
  
  def median
    return nil if self.length == 0
    return self.sort[self.length/2] if (self.length).odd?
    return (self.sort[(self.length/2) - 1] + self.sort[self.length/2])/2.00 if self.length.even?
  end

  def counts
    count = Hash.new(0)
    self.each { |ele| count[ele] += 1}
    return count
  end

  def my_count(tgt)
    count = 0
    self.each { |ele| count+= 1 if ele == tgt }
    return count
  end

  def my_index (arg)
    self.each_with_index {|ele, idx| return idx if ele == arg}
    return nil
  end

  def my_uniq()
    no_dupes = Hash.new()
    self.each {|ele| no_dupes[ele]=1}
    return no_dupes.keys()
  end

  def my_transpose()
    new_arr = []
    (0...self.length).each do |row|
        newRow = []
        (0...self.length).each do |col|
            newRow << self[col][row]
        end
        new_arr << newRow
    end
    return new_arr
  end
end


