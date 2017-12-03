class Player

  def initialize(sign)
    @player_sign = sign
  end

  def get_field
    puts "Podaj, w które pole mam wstawić #{@player_sign}"
    field = gets.chomp
    print field
    return field
  end

  def get_player_sign
    return @player_sign
  end
end