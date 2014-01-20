module ImageUtils
  def self.preview
    puts 'This is ImageUtils preview'
  end
  def self.transfer
    puts 'This is ImageUtils transfer'
  end
end

def one
  puts 'one'
  ImageUtils.preview
  ImageUtils.transfer
end

one

module LibraryUtils

  def self.included(base)
    base.extend(ClassMethods)
  end

  def add_game(game)
  end

  def remove_game(game)
  end

  module ClassMethods
    def search_by_game_name(name)
    end
  end
end

class AtariLibrary
  include LibraryUtils
end

#### 比较差的代码 start ##############
module LibraryUtils

  def self.included(base)
    base.extend(ClassMethods)
  end

  def add_game(game)
  end

  def remove_game(game)
  end

  module ClassMethods
    def search_by_game_name(name)
    end
  end
end
#### 比较差的代码 end ##############



#### 比较好的代码 start ##############
module LibraryUtils
  extend ActiveSupport::Concern

  def add_game(game)
  end

  def remove_game(game)
  end

  module ClassMethods
    def search_by_game_name(name)
    end
  end
end
#### 比较好的代码 end ##############


#### 修改前 start ##############
module LibraryUtils

  extend ActiveSupport::Concern

  def add_game(game)
  end

  def remove_game(game)
  end

  module ClassMethods
    def search_by_game_name(name)
    end

    def load_game_list
    end
  end
end
#### 修改前 end ##############



#### 修改后 start ##############
module LibraryUtils

  extend ActiveSupport::Concern

  included do
    load_game_list
  end

  def add_game(game)
  end

  def remove_game(game)
  end

  module ClassMethods
    def search_by_game_name(name)
    end

    def load_game_list
    end
  end
end
#### 修改后 end ##############


#### 修改前 start ##############
module LibraryLoader

  extend ActiveSupport::Concern

  module ClassMethods
    def load_game_list
    end
  end
end

module LibraryUtils
  def self.included(base)
    base.load_game_list
  end
end

class AtariLibrary
  include LibraryLoader
  include LibraryUtils
end
#### 修改前 end ##############



#### 修改后 start ##############
module LibraryLoader

  extend ActiveSupport::Concern

  module ClassMethods
    def load_game_list
    end
  end
end

module LibraryUtils

  extend ActiveSupport::Concern
  include LibraryLoader

  included do
    load_game_list
  end
end

class AtariLibrary
  include LibraryUtils
end
#### 修改后 end ##############