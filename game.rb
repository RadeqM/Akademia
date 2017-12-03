require './map.rb'
require './player.rb'

class Game

  def initialize
    map = Map.new
    player1 = Player.new "O"
    player2 = Player.new "X"
    map.initialize_empty
    map.draw_map(map.get_array_map)
  end

  def get_position(sign)
    puts "Podaj pole w którym mam wpisać #{sign}"
    position = gets.chomp
    print position
  end

  def tour(player)

  end
end

game = Game.new
map = Map.new
player1 = Player.new "O"
player2 = Player.new "X"
map.initialize_empty
map.draw_map(map.get_array_map)
player_field = player1.get_field
player_field_mapped = map.mapping(player_field)
map.put_sign(player_field_mapped.to_i, player1.get_player_sign)
map.draw_map(map.get_array_map)
map.check_win(player1.get_player_sign)
map.check_draw(map)

#wynik = map.check_win(player_field_mapped.to_s)
#puts wynik
#puts player1.get_player_sign
#map.put_sign(wynik, player1.get_player_sign)
#map.draw_map(map.get_array_map)

=begin
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
=end