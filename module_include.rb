module Kantoka
  def kantoka
    puts "なんとかかんとか"
  end
end

class Nantoka
  include Kantoka
end

nantoka = Nantoka.new
nantoka.kantoka
