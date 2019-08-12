class Code
  attr_reader :pegs
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }
  def self.valid_pegs?(arry)
    arry.all? {|peg| POSSIBLE_PEGS.key?(peg.upcase)}
  end

  def initialize (peg_array)
    if Code.valid_pegs?(peg_array)
      @pegs = peg_array.map {|peg| peg.upcase}
    else 
      raise "Not valid peg"
    end
  end

  def self.random(len)
    return Code.new(len.times.map{POSSIBLE_PEGS.keys.sample})
  end

  def self.from_string(str_peg)
    Code.new(str_peg.split(""))
  end

  def [](idx)
    @pegs[idx]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(code_inst)
    correct = 0
    code_inst.pegs.each_with_index do |peg,idx|
      if code_inst[idx] == @pegs[idx]
        correct += 1
      end
    end
    return correct
  end

  def num_near_matches(code_inst)
    near_matches = 0
    code_inst.pegs.each_with_index do |peg,idx|
      if code_inst[idx] != @pegs[idx] && @pegs.include?(peg)
        near_matches += 1
      end
    end
    return near_matches
  end

  def ==(code_inst)
    return code_inst.pegs == self.pegs
  end
  
end
