class InvalidGameError < StandardError; end
class Name
  def initialize(first, last=nil)
    @first = first
    @last = last
  end
  def format
    [@last, @first].compact.join(', ')
  end
end

class Student
  attr_accessor :name
  def initialize(name)
    raise InvalidGameError, 'The name must not nil' unless name
    self.name = name
  end
end

class Tweet
  attr_accessor :status
  attr_reader :created_at
  def initialize(status)
    @status = status
    @created_at = Time.new
  end
  def to_s
    "#{status}\n#{created_at}"
  end
end

class UserList
  attr_accessor :name
  def initialize(name)
    self.name = name
  end
end

def one(message, lat = nil, long = nil)
  puts 'one'
  puts message
end

one( 'Method param default value' )

def two(message, options = {})
  puts 'two'
  puts message
  puts options[:lat]
  puts options[:long]
  puts options[:reply_id]
end

two( 'Method param is hash', lat: 12.5, long: 19, reply_id: 1  )

def three
  student = Student.new(nil)
end

def three_2
  puts 'three'
  begin
    three
  rescue InvalidGameError => e
    puts "There was a problem creating your new game: #{e.message}"
  end
end

three_2

def four(state, *names)
  puts 'four'
  puts "#{names.join( ' ' )} #{state}"
end

four('arguments test', 'pony', 'pony1', 'pony2')

def five
  puts 'five'
  user_names = [ ['Ashton', 'Kutcher'], ['Will', 'Wheaton'], ['Madonna'] ]
  user_names.each { |n| puts "#{n[1]}, #{n[2]}" }
  name = Name.new('pony first', 'pony last')
  puts name.format
  user_names = []
  user_names << Name.new('first1', 'last1')
  user_names << Name.new('first2', 'last2')
  user_names << Name.new('first3')
  user_names.each { |n| puts n.format }
end

five

def six
  puts 'six'
  tweets = Tweet.new('new')
  # tweets.created_at = Time.new # created_at readonly
  puts tweets.to_s
end

six

def seven
  puts 'seven'
  user_list = UserList.new('pony')
  puts user_list.name
end

seven



