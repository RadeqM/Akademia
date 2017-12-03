class Map

  def initialize
    @array_map = ['1', '2', '2', '1', '2', '2', '1', '2', '2']
  end

  def get_array_map_i(i)
    return @array_map[i]
  end

  def get_array_map
    return @array_map
  end

  def draw_map(map)
    for i in 0..map.length - 1
      if i % 3 == 0 then
        print "\n\t\t\t-------------"
        print "\n\t\t\t|"
      end
      print " #{map[i]} |"
    end
    puts "\n\t\t\t-------------"
  end

  def check_win(sign)

    # wiersze
    counter = 0
    while counter <= 6 do
      if @array_map[counter] == sign && @array_map[counter + 1] == sign && @array_map[counter + 2] == sign
        puts "Win"
        return true
      end
      counter += 3
    end

    # kolumny
    for i in 0..2
      if @array_map[i] == sign && @array_map[i + 3] == sign && @array_map[i + 6] == sign
        puts "Win"
        return true
      end
    end

    # przekątne
    if @array_map[0] == sign && @array_map[4] == sign && @array_map[8] == sign
      puts "Win"
      return true
    end

    if @array_map[2] == sign && @array_map[4] == sign && @array_map[6] == sign
      puts "Win"
      return true
    end
  end

  def put_sign(position, sign)
    @array_map[position] = sign;
  end

  # 1 2 3
  # 4 5 6
  # 7 8 9

  # A3 B3 C3
  # A2 B2 C2
  # A1 B1 C1

  def mapping(gets)
    board = {'A3' => 1, 'a3' => 1,
             'B3' => 2, 'b3' => 2,
             'C3' => 3, 'c3' => 3,
             'A2' => 4, 'a2' => 4,
             'B2' => 5, 'b2' => 5,
             'C2' => 6, 'c2' => 6,
             'A1' => 7, 'a1' => 7,
             'B1' => 8, 'b1' => 8,
             'C1' => 9, 'c1' => 9}
    return board[gets]
  end

end