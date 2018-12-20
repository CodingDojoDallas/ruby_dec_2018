a = ["Mexico", "Germany", "Denmark", "China", "Japan"]

puts a.at(0)  #=> Mexico
puts a.fetch(-1) #=> China

a.delete('China') 
puts a  #=> Mexico, Germany, Denmark, Japan

["Mexico", "Germany", "Denmark","China","Japan"].reverse  #=> ["Japan", "China", "Denmark", "Germany", "Mexico"]

puts a.length #=> 5

puts a.sort.to_s  #=> ["China", "Denmark", "Germany", "Japan", "Mexico"]

puts a.slice(2..3)  #=> Denmark China

puts a.shuffle #=>Germany China Japan Denmark Mexico
puts a.shuffle #=>Germany Mexico Japan China Denmark

puts a.join("-") #=> Mexico-Germany-Denmark-China-Japan

puts a.insert(0, "Maldives")  #=>  Maldives Mexico Germany Denmark China Japan

puts a.values_at(2,4).join(' and ')  #=> Demark and Japan

