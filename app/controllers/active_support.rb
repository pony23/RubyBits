require 'active_support/all'

def one
  puts 'one'
  array = [0, 1, 2, 3, 4, 5, 6]
  puts array.from(4).to_s
  puts array.to(2).to_s
  puts array.in_groups_of(3).to_s
  puts array.split(2).to_s
end

one

def two
  puts 'two'
  apocalypse = DateTime.new(2012, 12, 21, 14, 27, 45)
  puts apocalypse
  puts apocalypse.at_beginning_of_day
  puts apocalypse.at_end_of_month
  puts apocalypse.at_beginning_of_year
  puts apocalypse.advance(years: 4, months: 3, weeks: 2, days: 1)
  puts apocalypse.tomorrow
  puts apocalypse.yesterday
end

two

def three
  puts 'three'
  options = { user: 'codeschool', lang: 'fr' }
  new_options = { user: 'codeschool', lang: 'fr', password: 'dunno' }
  #puts options.diff(new_options)
  puts options.stringify_keys
end

three

def four
  puts 'four'
  options = {
      lang: 'fr',
      user: 'codeschool'
  }
  default = {
      lang: 'en',
      country: 'us'
  }
  puts options.reverse_merge(default)
  new_options = { user: 'codeschool', lang: 'fr', password: 'dunno' }
  puts new_options.except(:password)
  #puts new_options.assert_valid_keys(:user, :lang)
end

four

def background_class(index)
  return 'white' if index.odd?
  return 'grey' if index.even?
end

def five
  puts 'five'
  [1,2,3,4].each do |index|
    puts "<div class='#{background_class(index)}'/>"
  end
  puts "#{1.ordinalize} place!"
  puts "#{2.ordinalize} place!"
  puts "#{23.ordinalize} place!"
  puts 'user'.pluralize
  puts 'woman'.singularize
  puts 'octopus'.pluralize
  puts 'ruby bits'.titleize
  puts 'account_options'.humanize
end

five