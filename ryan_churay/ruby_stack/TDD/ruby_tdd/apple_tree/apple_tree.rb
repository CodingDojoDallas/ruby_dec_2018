class AppleTree
  attr_accessor :age
  attr_reader :height, :apple
  def initialize
    @age = 0
    @height = 0
    @apple = 0
  end

  def year_gone_by
    @age += 1
    if(@height == 0)
      @height = 10
    elsif @height != 0
      @height += @height*0.1
    end
    @apple += 2 if(@age >2 && @age<10)
    self
  end
  def pick_apples
    @apple = 0
  end
end
