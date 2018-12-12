## 1 print 1-255
for i in 1..255
  print (i.to_s + " ")
end

## 2. print odd numbers between 1-255
for i in 1..255
  if i % 2 == 1
    print(i.to_s + " ")
  end
end

## 3. print the sum of the numbers from 0 to 255
sum = 0
for i in 0..255
  sum = i + sum
  puts "New numer: " + i.to_s + " Sum: " + sum.to_s
end

## 4. iterate through array
sports = ['golf','football','tennis','basketball','hockey']
for i in sports
  puts "#{i}"
end

## 5. find the max in a array
array1 = [-1,-2,7,9,5,4,2,-6]
maxValue = array1.max
puts "Maximum value in array1 is " + maxValue.to_s

## 6. find the average of an array
array2 = [5,7,5,4,20,10,42]
sum = 0
for i in array2
  sum += i
end
avg = sum / array2.length
puts "Average value of array2 is " + avg.to_s

## 7. array with odd numbers
y=[]
for i in 0..255
  if i % 2==1
    y.push(i)
  end
end
puts y

## 8. square the values
array3 = [2,4,5,-2,8]
newArr = []
for i in array3
    newArr.push(i * i)
end
puts newArr

## 9. Greater than Y
def greaterThanY array, why
  count = 0
  for i in array
    if i > why
      count+=1
    end
  end
puts (count).to_s
end

greaterThanY [1,2,3,4,5,6],4


## 10. get rid of negative numbers
def eleminateNegative arr
  newArr = []
  for i in arr
    if i < 0
      newArr.push(0)
    end
    if i>0
      newArr.push(i)
    end
  end
  return newArr
end
arrToTest =[10,-2,-3,1,-7]
puts eleminateNegative arrToTest

## 11. max min avg
array2 = [5,7,5,4,20,10,42]
sum2 = 0
min = array2[0]
max=array2[0]
for x in array2
  sum2 += x
  if x < min
    min = x
  end
  if i > max
    max = x
  end
end
avg = sum2 / array2.length
puts "Average: " + avg.to_s + " Max: " + max.to_s + " Min: " + min.to_s

## 12. shift to the front

def shiftToTheFront array3
  for i in 0 .. array3.length-1
    if i == array3.length-1
      array3[i] = 0
    else
      array3[i] = array3[i+1]
    end
  end
return array3
end

print shiftToTheFront([1,5,10,7,-2])

puts
## 13. replace negatives with 'Dojo'

def replaceWithDojo array4
  for i in 0..array4.length-1
    if array4[i]<0
      array4[i] = 'Dojo'
    end
  end
  return array4
end
print replaceWithDojo([-2,-3,1,6,-9])
puts 
