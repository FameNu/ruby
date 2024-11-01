# while loop
count = 0
while count < 5
  puts count
  count += 1
end

# for loop
for i in 0..5
  puts i
end

# each loop
fruits = ["apple", "banana", "cherry"]
fruits.each do |fruit|
  puts fruit
end

for i in fruits
  puts i
end

person = {
  name: "John",
  age: 20,
  height: 1.85
}
person.each do |key, value|
  puts "#{key}: #{value}"
end

puts "try for loop on Hash"
for i in person
  puts i
end
# Output: is read key and then read value and repeat to until the end of the hash
# name
# John
# age
# 20
# height
# 1.85

# loop do..while
# Ruby not have do..while, but can use this 
count = 0
begin
  puts count
  count += 1
end while count <= 0
