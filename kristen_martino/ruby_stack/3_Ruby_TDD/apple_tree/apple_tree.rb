# AppleTree class
class AppleTree
  attr_accessor :age
  attr_reader :height, :apple_count

  def initialize
    @age         = 0
    @height      = 0
    @apple_count = 0
  end

  def year_gone_by
    @apple_count += 2 if @age >= 3 && @age < 10
    @age += 1
    @height.zero? ? @height += 1 : @height *= 1.1
    self
  end

  def pick_apples
    @apple_count = 0
    self
  end
end
