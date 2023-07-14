module Kantoka
  def kantoka
    puts "なんとかかんとか"
  end
end

class Nantoka
  extend Kantoka
end

Nantoka.kantoka
