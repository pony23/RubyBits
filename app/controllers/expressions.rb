class Tweets
  @name = nil
  def name
    @name
  end
end

def one
  puts 'one'
  tweets = nil
  unless tweets
    puts 'empty'
  end
end

one

def two
  puts 'two'
  tweets = nil
  if tweets
    puts 'not empty'
  else
    puts 'empty'
  end
end

two

def three
  puts 'three'
  tweets = Tweets.new
  if tweets.name
    puts 'name is not empty'
  else
    puts 'name is empty'
  end
end

three

def four
  puts 'four'
  tweets = Tweets.new
  puts 'Password too short' if 'aa'.length < 8
  # fail 'Password too short' if 'aa'.length < 8 # fail表示抛出异常
  puts 'No user name set' unless tweets.name
end

four

def five
  puts 'five'
  tweets = Tweets.new
  if tweets && tweets.name
    puts 'not empty'
  else
    puts 'is empty'
  end
end

five

def six
  puts 'six'
  result = nil||1
  puts result
  result = 1||nil
  puts result
  result = 1||2
  puts result
  tweets = Tweets.new
  puts tweets.name || 'pony'
end

six

def seven
  puts 'seven'
  name = 'pony'
  #if name
  #  pony_name = name
  #else
  #  pony_name = 'create'
  #end
  pony_name = if name
                name
              else
                'create'
              end
  puts pony_name
end

seven