class Fixnum
  def my_upto(num)
    (1..num).each { |i| yield i }
  end

  def my_times
    (0...self).each {|i| yield i}
  end

  def prev
    self - 1
  end

  def skip
    self + 2
  end

  def double
    self * 2
  end
end