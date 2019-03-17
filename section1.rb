puts '************************************************************'
puts "Hello, Ruby!!!"

name = "斉藤"
puts "Hello, #{name}!!"


puts '************************************************************'
people = %w{alice bob carol}

person_0th = people[0]
person_9th = people[9]

puts person_0th&.capitalize
puts person_0th.capitalize

puts person_9th&.capitalize
begin
    puts person_9th.capitalize
rescue => e
  puts e
end


puts '************************************************************'
def greet(name, *message)
  message.each do |message|
    puts "#{message},#{name}"
  end
end

greet 'Ruby', 'Hello', 'こんにちは'

puts '************************************************************'
def greet_twice(name, first_message, second_message)
  puts "#{first_message},#{name}"
  puts "#{second_message},#{name}"
end

greeting = %w{Hello Hola}

greet_twice 'Ruby', *greeting

puts '************************************************************'
def block_sample
  puts 'stand up'
  yield
  puts 'sit down'
end

block_sample do
  puts 'walk'
  puts 'walk2'
end













