def greater_than_10 r
	p r.sum(0)
	p r.find_all {|x| x > 10}
	r
end

r = [3, 5, 1, 2, 7, 9, 13, 25, 32]
greater_than_10 r

def longer_than_5 r
	p r.shuffle!
	r.each {|x| puts x}
	p r.find_all {|x| x.length > 5}
	r
end

r = %w(John KB Oliver Cory Matthew Christopher)
longer_than_5 r

def alphabet r
	r.shuffle!
	puts r[-1]
	puts r[0]
	if r[0] == 'a' || r[0] == 'e' || r[0] == 'i' || r[0] == 'o' || r[0] == 'u'
		puts "The first letter is a vowel!"
	end
	r
end

abc = ("a".."z").to_a
alphabet abc

def random_arr
	r = []
	(0...10).each {|i| r[i] = rand(55..100)}
	r
end

p random_arr

def even_more_random_arr
	r = random_arr
	p r.sort!
	p r[0]
	p r[-1]
	r
end

even_more_random_arr

def random_str
	str = ""
	(1..5).each {str += (65 + rand(26)).chr}
	str
end

p random_str

def random_arr_of_strings
	r = []
	(0...10).each {|i| r[i] = random_str}
	r
end

p random_arr_of_strings