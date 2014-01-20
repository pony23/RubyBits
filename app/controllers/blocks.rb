#### 修改前 start #####

words = ['Had', 'eggs', 'for', 'breakfast.']
for index in 0..(words.length - 1)
  puts words[index]
end

#### 修改前 end   #####

#### 修改后 start #####

words = ['Had', 'eggs', 'for', 'breakfast.']
words.each { |word| puts word }

#### 修改后 end   #####

def call_this_block_twice
  yield
  yield
end

def one
  puts 'one'
  call_this_block_twice { puts 'twitter' }
  call_this_block_twice { puts 'tweet' }
end

one

def call_this_block
  yield 'tweet'
end

def two
  puts 'two'
  call_this_block { |myarg| puts myarg }
  call_this_block { |myarg| puts myarg.upcase }
end

two

def puts_this_block
  puts yield
end

def three
  puts 'three'
  puts_this_block { 'tweet' }
end

three

def call_this_block_four
  block_result = yield 'foo'
  puts block_result
end

def four
  puts 'four'
  call_this_block_four { |arg| arg.reverse }
end

four


#### 修改前 start #####

class Timeline
  def list_tweets
    @user.friends.each do |friend|
      friend.tweets.each { |tweet| puts tweet }
    end
  end
  def store_tweets
    @user.friends.each do |friend|
      friend.tweets.each { |tweet| tweet.cache }
    end
  end
end

#### 修改前 end   #####

#### 修改后 start #####

class Timeline
  def each
    @user.friends.each do |friend|
      friend.tweets.each { |tweet| yield tweet }
    end
  end
end

time_line = Timeline.new
time_line.each { |tweet| puts tweet }
time_line.each { |tweet| tweet.cache }
#### 修改后 end   #####


