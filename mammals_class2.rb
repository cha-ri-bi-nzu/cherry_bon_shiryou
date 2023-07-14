require './animal_class.rb'


class Human < Mammal
  def ningen
    puts "ニンゲンは"
  end
end

human = Human.new
human.ningen       # => ニンゲンは
human.teeth        # => 歯がある
human.viviparous   # => 出産する
puts "----------------"



class Whale < Mammal
  def kujira
    puts "クジラは"
  end
end

whale = Whale.new
whale.kujira       # => クジラは
whale.teeth        # => 歯がある
whale.viviparous   # => 出産する
puts "----------------"



class Bat < Mammal
  def koumori
    puts "コウモリは"
  end
end

bat = Bat.new
bat.koumori       # => コウモリは
bat.teeth         # => 歯がある
bat.viviparous    # => 出産する



