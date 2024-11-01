class Person
  def initialize(name, age, height)
    @name = name
    @age = age
    @height = height
  end

  def greeting
    puts "Hello, my name is #{@name}, I am #{@age} years old."
  end

  def tellHeight
    puts "My height is #{@height} meters."
  end
end  

class Person2
  def initialize(name: "Guest", age: nil, height: nil)
    @name = name
    @age = age if age
    @height = height if height
  end

  def greeting
    if @age && @name
      puts "Hello, my name is #{@name}, I am #{@age} years old."
    elsif @name
      puts "Hello, my name is #{@name}."
    else
      puts "I just a #{@name}."
    end
  end

  def tellHeight
    if @height
      puts "My height is #{@height} meters."
    else
      puts "I don't know my height."
    end
  end
end  