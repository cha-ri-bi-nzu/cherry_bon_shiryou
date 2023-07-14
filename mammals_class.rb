require './animal_class.rb'
require './characteristic.rb'


class Human < Mammal
  def ningen
    puts "ニンゲンは"
  end
end

human = Human.new
human.ningen       # => ニンゲンは
human.viviparous   # => 出産する
puts "----------------"



class Whale < Mammal
  def kujira
    puts "クジラは"
  end
end

whale = Whale.new
whale.kujira       # => クジラは
whale.viviparous   # => 出産する
puts "----------------"



class Bat < Mammal
  def koumori
    puts "コウモリは"
  end
end

bat = Bat.new
bat.koumori       # => クジラは
bat.viviparous   # => 出産する
