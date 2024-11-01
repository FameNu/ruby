require_relative '03class'

people = [
  Person.new("Dave", 12, 1.85),
  Person2.new(name: "John", age: 20, height: 1.85),
  Person2.new(name: "Joe", age: 243),
  Person2.new(name: "Jake", height: 1.65),
  Person2.new(name: "Jill"),
  Person2.new(),
  Person2.new(height: 1.75),
  Person2.new(age: 30),
  Person2.new(height: 1.45, age: 25)
]

people.each_with_index do |p, i|
  puts "Person ##{i + 1}"
  p.greeting
  p.tellHeight
end