puts '************************************************************'
puts "Hello, Ruby!!!"

name = "斉藤"
puts "Hello, #{name}!!"


puts '************************************************************'
people = %w{alice bob carol}

person_0th = people[0]
person_9th = people[9]

#puts person_0th&.capitalize
puts person_0th.capitalize

#puts person_9th&.capitalize
begin
    puts person_9th.capitalize
rescue => e
  puts e
end


puts '************************************************************'
def greet(name, *message)
  message.each do |msg|
    puts "#{msg},#{name}"
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

def block_sample2
  puts "stand up"

  yield if block_given?

  puts "sit down"
end

block_sample2 do
  puts "walk"
  puts "walk2"
end

puts '************************************************************'

File.open 'test.txt' do |t|
  puts t.read
end

f = File.open('test2.xxx', 'w')
f.puts 'without block'
f.close

File.open 'test3.xxx', 'w' do |t|
  t.puts 'with block'
end

puts '************************************************************'

#関数戻り値設定
def call
  'called'
end

puts call()

def greet2(resipient)
  return false unless resipient

  "Hi,#{resipient.capitalize}."
end

puts greet2('alice')
puts greet2(nil)


def greet3(name, message = 'Hi')
  puts "#{message}, #{name}."
end

greet3("斎藤")
greet3("斎藤", "こんにちは")
greet3("斎藤", nil)

def greet4(name, message = 'Hi', suffix = '.')
  puts "#{message}, #{name + suffix}"
end

greet4('Ruby')
greet4('Ruby', 'Hello')
greet4('Ruby', 'Hello', ':')

def greet5(name, *messages)
  messages.each do |message|
    puts "#{message}, #{name}."
  end
end

greet5 "Ruby", "Hello", "こんにちは"

puts '************************************************************'












