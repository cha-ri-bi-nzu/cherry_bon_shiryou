require './animal_class.rb'
require './characteristic.rb'


class Ostrich < Bird
  extend LandAnimal
  def dachou
    puts "ダチョウは"
  end
end

ostrich = Ostrich.new
ostrich.dachou   # => ダチョウは
ostrich.beak     # => クチバシがある
ostrich.down     # => 羽毛がある
Ostrich.run      # => 走れる
puts "----------------"


class WildDuck < Bird
  extend FlyingCreature
  extend AquaticAnimal
  def kamo
    puts "カモは"
  end
end

wild_duck = WildDuck.new
wild_duck.kamo    # => カモは
wild_duck.beak    # => クチバシがある
wild_duck.down    # => 羽毛がある
WildDuck.fly      # => 飛べる
WildDuck.swim     # => 泳げる
puts "----------------"


class Penguin < Bird
  extend AquaticAnimal
  def pengin
    puts "ペンギンは"
  end
end

penguin = Penguin.new
penguin.pengin   # => ペンギンは
penguin.beak     # => クチバシがある
penguin.down     # => 羽毛がある
Penguin.swim     # => 泳げる
