# 1:
for i in 1..255
  puts i
end

# 2:
for i in (1..255)
  puts i if i.odd?
end
# 3:
sum = 0
for i in 0..255
  puts i
  sum = sum + i
  puts sum
end
# 4:
i = 0
array = [1,3,5,7,9,13]
while i < array.length
  puts array[i]
  i += 1
end
# 5:
def max_val array
  puts array.max
end
max_val [7,3,65,2]
# 6:
def get_avg array
  array.reduce(:+).to_f / array.length
end
get_avg [5,6,7,8]
# 7:
(1..255).to_a.reject { |i| i.even? }
# 8:
def greater_than array, y
  puts array.count {|i| i > y}
end
greater_than [1,2,3,4,5,6,7,8], 5
# 9:
[1,2,3,4].map! {|i| i * i}
# 10:
[2,4,6,-8,-10].map! {|i| i < 0 ? i = 0 : i = i}
# 11:
def mma array
  new_array = []
  new_array.push(array.reduce(:+).to_f / array.length)
  new_array.push(array.max)
  new_array.push(array.min)
  return new_array.hash
end
mma [1,2,3,4,5]
# 12:
array = [3,6,9,12,15]
array.shift
array.push(0)
array
#13
def num_2_string array
  array.map! {|i| i < 0 ? i = "Dojo" : i = i}
end
num_2_string [2,4,6,-2,4,-6,1]
