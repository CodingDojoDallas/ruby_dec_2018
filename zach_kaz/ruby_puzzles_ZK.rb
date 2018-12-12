y=[3,5,1,2,7,9,8,13,25,32]
def function1 x
    sum=0
        for i in x
            sum+=i
        end 
    puts sum
    return x.find_all{|i| i>10}
end
function1 y

z=["John","KB","Oliver","Cory","Matthew","Christopher"]
def function2 array
    array.shuffle!
    puts array
    return array.find_all{|i| i.length>5}
end

puts function2 z

a= ('a'..'z').to_a
def function3 array
    array.shuffle!
    puts array[25]
    puts array[0]
    if (array[25]=='a')||(array[25]=='e')||(array[25]=='i')||(array[25]=='o')||(array[25]=='u')
        puts "Iaoweui"
    end
end
function3 a

def function4
    x=Array.new(10)
    for i in (0..9)
        x[i]=rand(55..100)
    end
    puts x
end
function4

def function5
    x=Array.new(10)
    for i in (0..9)
        x[i]=rand(55..100)
    end
    x.sort!
    puts x
    puts x[0]
    puts x[9]
end
function5

def function6
   x=Array.new(5)
   for i in (0..4)
    x[i]=(65+rand(26)).chr
   end
   y=x.join
   puts y
end
function6

def function7
    x=Array.new(10,[nil,nil,nil,nil,nil])
    for i in (0..9)
        for h in (0..4)
            x[i][h]=(65+rand(26)).chr
        end
        x[i]=x[i].join
    end
    puts x
end

function7


