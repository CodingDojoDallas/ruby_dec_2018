puts (1..255).to_a.to_s

puts (1..255).select {|elem| elem.odd?}.to_a.to_s

sum = 0
for i in 0..255
	sum += i
	puts "i: #{i}, sum: #{sum}"
end