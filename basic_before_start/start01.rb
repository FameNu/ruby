puts "hello, world"

# Variable type
name = "John" # string
age = 20 # integer
height = 1.85 # float
is_student = false # boolean

# Function to check student
def check_student(is_student_input)
  if is_student_input
    puts "I am a student"
  else
    puts "I am not a student"
  end
end

# puts with typeof each variable
puts name.class
puts age.class
puts height.class
puts is_student.class
check_student(is_student)

is_student = !is_student
check_student(is_student)

# Functions
def greeting(name, age)
  # String interpolation
  puts "Hello, my name is #{name}, I am #{age} years old."
end
greeting(name, age)

# Array
fruits = ["apple", "banana", "cherry"]
puts fruits[0]

# Hash
person = {
  name: name,
  age: age,
}
puts person[:name]
puts person[:age]
puts person