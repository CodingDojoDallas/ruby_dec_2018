module MyEnumerable
  def my_each
    self.each do |i|
      yield i
      i += i
    end
  end
end
class Array
   include MyEnumerable
end
[50,2,3,4,5].my_each { |i| puts i } # => 1 2 3 4
[1,2,3,4].my_each { |i| puts i * 10 } # => 10 20 30 40
