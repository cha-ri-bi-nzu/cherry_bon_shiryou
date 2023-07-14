require './animal_class.rb'
require './characteristic.rb'


class Human < Mammal
  include LandAnimal
  def ningen
    puts "ニンゲンは"
  end
end

human = Human.new
human.ningen       # => ニンゲンは
human.teeth        # => 歯がある
human.viviparous   # => 出産する
human.run          # => 走れる
puts "----------------"



class Whale < Mammal
  include AquaticAnimal
  def kujira
    puts "クジラは"
  end
end

whale = Whale.new
whale.kujira       # => クジラは
whale.teeth        # => 歯がある
whale.viviparous   # => 出産する
whale.swim         # => 泳げる
puts "----------------"



class Bat < Mammal
  include FlyingCreature
  def koumori
    puts "コウモリは"
  end
end

bat = Bat.new
bat.koumori      # => コウモリは
bat.teeth        # => 歯がある
bat.viviparous   # => 出産する
bat.fly          # => 飛べる

