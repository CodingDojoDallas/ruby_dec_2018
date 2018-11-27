a = %w(Matz Guido Dojo Choi John)
b = [5, 6, 9, 3, 1, 2, 4, 7, 2, 8, 10, 2, 9]
c = ["Dojo", 9]
x = (a + b) - c # Removes "Dojo"s and all 9's from a + b

puts "-------------\nx.to_s"
puts x.to_s
puts "-------------\nx.at(3)"
puts x.at(3)
puts "-------------\nx.fetch(3)"
puts x.fetch(3)
puts "-------------\nx.delete_at(3)"
x.delete_at(3); puts x.to_s # deletes value at index 3
puts "-------------\nx.delete(2)"
x.delete(2); puts x.to_s # deletes all 2's from array
puts "-------------\na.reverse"
puts a.reverse.to_s
puts "-------------\na.length"
puts a.length
puts "-------------\na.sort"
puts a.sort.to_s
puts "-------------\na.slice(1,2)"
puts a.slice(1,2)
puts "-------------\na.shuffle"
puts a.shuffle.to_s
puts "-------------\na.join"
puts a.join("-")
puts "-------------\na.insert(3,0)"
puts a.insert(3, 0)
puts "-------------\nx.values_at(1,2).join(' and ')"
puts x.values_at(1,2).join(' and ')

# .at or .fetch
# .delete
# .reverse
# .length
# .sort
# .slice
# .shuffle
# .join
# .insert
# values_at() -> returns an array with values specified in the param, e.g.:
#   a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"