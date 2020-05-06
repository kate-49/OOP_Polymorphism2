class ScrambleReverse

  def initialize(contents)
    @contents = contents
  end

  def read
   @contents
  end

  def scramble_by_reversing
    @contents = @contents.reverse
  end

  def unscramble_by_reversing
    @contents = @contents.reverse
  end

end
