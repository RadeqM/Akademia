require './map.rb'

class Game

  def get_position(sign)
    puts "Podaj pole w którym mam wpisać #{sign}"
    position = gets.chomp
    print position
  end

end

game = Game.new
map = Map.new
map.draw_map(map.get_array_map)
wynik = map.check_win('2')
puts wynik
map.put_sign(1, '1')
map.draw_map(map.get_array_map)
map.put_sign(8, '8')
map.draw_map(map.get_array_map)
game.get_position('O')
puts map.mapping('A1')