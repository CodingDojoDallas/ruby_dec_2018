def test
  puts "You are in the method"
  yield
  puts "You are again back to the method"
  yield
end
test { puts "You are in the block" }

def test(num)
  yield 5
  puts "You are in the method test"
  puts "yield(num) has a value of #{yield(num)}"
end
test(5) { |i| i*i }


BEGIN { puts '***********************'}

END { puts '***********************'}
