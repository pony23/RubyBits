class User
  def initialize(name)
    @name = name
  end
end

class Follower < User
  def initialize(name, following)
    @following = following
    super(name)
  end
  def relationship
    "#{@name} follows #{@following}"
  end
end

class Grandparent
  def my_method(argument)
    "Grandparent: #{argument }"
  end
end

class Parent < Grandparent

end

class Child < Parent
  def my_method(argument)
    string = super
    "#{string}\nChild: #{argument}"
  end
end

class Pony
  attr_accessor :name
  def initialize(name)
    self.name = name
  end
  def to_s
    "This is to_s #{self.name}"
  end
  def show
    "#{self}"
  end
end

def one
  puts 'one'
  follower = Follower.new('pony', 'aplusk')
  puts follower.relationship
end

one

def two
  puts 'two'
  child = Child.new
  puts child.my_method('wT001!')
end

two

def three
  pony = Pony.new('Pony')
  puts pony.show
end

three