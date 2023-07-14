require './animal_class.rb'


class Ostrich < Bird
  def dachou
    puts "ダチョウは"
  end
end

ostrich = Ostrich.new
ostrich.dachou   # => ダチョウは
ostrich.beak     # => クチバシがある
ostrich.down     # => 羽毛がある
puts "----------------"


class WildDuck < Bird
  def kamo
    puts "カモは"
  end
end

wild_duck = WildDuck.new
wild_duck.kamo    # => カモは
wild_duck.beak    # => クチバシがある
wild_duck.down    # => 羽毛がある
puts "----------------"


class Penguin < Bird
  def pengin
    puts "ペンギンは"
  end
end

penguin = Penguin.new
penguin.pengin   # => ペンギンは
penguin.beak     # => クチバシがある
penguin.down     # => 羽毛がある
