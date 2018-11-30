def one arrgument
    sum = 0
    for i in (0...arrgument.length)
        sum += arrgument[i]
    end
    puts "sum #{sum}"
    arrgument.select { |num| num >= 10 }
end

arr = [3,5,1,2,7,9,8,13,25,32]
puts one arr 

def two arrgument
    puts arrgument.shuffle
    arrgument.select {|name| name.length > 5}
end
arr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
puts two arr

def three
    arr = []
    for n in ('a'..'z')
        arr.push(n)
    end
    arr.shuffle!
    puts arr
    puts arr.fetch(-1)
    puts arr.fetch(0)
    puts "is a vowel" if arr.fetch(0).match(/[aeiou]/)
end
three

def four
    10.times.map { rand(55..100) }
end
puts four

def five
    arr = 10.times.map { rand(55..100) }.sort!
    puts arr.at(0)
    puts arr.at(-1)
    arr
end
puts five


def six
    arr = []
    for i in (0...5)
        arr.push((65+rand(26)).chr)
    end
    arr
end
#puts six

def seven
    arr = []
    10.times do
        arr.push(six)
    end
    arr
end
puts seven.to_s