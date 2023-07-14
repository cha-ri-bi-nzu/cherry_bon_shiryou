require './animal_class.rb'
require './characteristic.rb'


class Human < Mammal
  def ningen
    puts "ニンゲンは"
  end
end

class Whale < Mammal
  def kujira
    puts "クジラは"
  end
end

class Bat < Mammal
  def koumori
    puts "コウモリは"
  end
end

