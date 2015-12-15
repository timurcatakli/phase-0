# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# INITIALIZE a variable bingo_board eqs to the bingo board numbers
# CREATE a method call_draw that does the following
#   CREATE an array with the letters B,I,N,G,O
#   GET a random number between 0 and 4
#   ASSIGN the corresponding letter to call_letter variable.

#   GET a random number between 1 and 100 inclusive.
#   ASSIGN the random number to call_number
#   RETURN call_letter and call_number as draw.

# CREATE a method that checks if the draw exists on the bingo board
#   MARK the number with X if the number matches with draw
#   PRINT bingo board and prettify it.

# Initial Solution

# class BingoBoard

#   # initialize method 
#   def initialize(board)
#     @bingo_board = board
#   end

#   #call_draw method
#   def call_draw()
#     @call_letter_arr = %w[B I N G O] 
#     @call_number = rand(0..4)
#     @call_letter = @call_letter_arr[@call_number]
#     @call_number = rand(1..100)
#     draw = @call_letter + @call_number.to_s
#     return "Lucky Draw is: " + draw
#   end

#   #check_draw method
#   def check_draw()
#     puts call_draw()

#     i = 0
#     @bingo_board.each do |x|
#       x.each_with_index do |item, index| 
#         if @call_number == item && index == @call_number
#           @bingo_board[i][index] = "X"
#         end
#       end
#       i += 1
#     end
    
#     print_bingo_board()
#   end

#   #colorize output method
#   def colorize(text, color_code)
#     "\e[#{color_code}m#{text}\e[0m"
#   end

#   def red(text); colorize(text, 31); end
#   def green(text); colorize(text, 32); end
#   def cyan(text); colorize(text, 36); end

#   #print bingo board method
#   def print_bingo_board
#     j = 0 
#     printf "%18s", "#{cyan("B")}"
#     printf "%19s", "#{cyan("I")}"
#     printf "%19s", "#{cyan("N")}"
#     printf "%19s", "#{cyan("G")}"
#     printf "%19s", "#{cyan("O")}"
#     printf "\n"
#     printf "%19s", "#{cyan("---")}"
#     printf "%19s", "#{cyan("---")}"
#     printf "%19s", "#{cyan("---")}"
#     printf "%19s", "#{cyan("---")}"
#     printf "%19s", "#{cyan("---")}"
#     printf "\n"

#     @bingo_board.each do |x|
#       x.each do |item|
#         if item == 'X'
#           printf "%19s", "#{green(item)}"
#         else
#           printf "%10s", item
#         end
#       end
      
#       print "\n"
#       j += 1
#     end
#   end
# end

# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]

# new_game = BingoBoard.new(board)
# new_game.check_draw()

#puts  new_game.print_bingo_board

# Refactored Solution
class BingoBoard

  # initialize method 
  def initialize(board)
    @bingo_board = board
  end

  #call_draw method
  def call_draw()
    @call_letter_arr = %w[B I N G O] 
    @call_number = rand(0..4)
    @call_letter = @call_letter_arr[@call_number]
    
    case @call_number
    when 0  # B
      @call_draw_number = rand(1..15)
    when 1  # I
      @call_draw_number = rand(16..30)
    when 2  # N
      @call_draw_number = rand(31..45)
    when 3  # G
      @call_draw_number = rand(46..60)
    when 4  # O
      @call_draw_number = rand(61..75)
    end

    @draw = @call_letter + @call_draw_number.to_s
    return @draw
  end



  #check_draw method
  def check_draw(draw_times)
    draw_times.times do 
    print  call_draw + ' - '
    i = 0
    @bingo_board.each do |x|
      x.each_with_index do |item, index| 
        if item == @call_draw_number
          @bingo_board[i][index] = 'X'
        end
      end
      i += 1      
    end
  end
    print_bingo_board()
  end
  

  #colorize output method
  def colorize(text, color_code)
    "\e[#{color_code}m#{text}\e[0m"
  end

  def red(text);    colorize(text, 31);   end
  def green(text);  colorize(text, 32);   end
  def cyan(text);   colorize(text, 36);   end
  def blue(text);   colorize(text, 34);   end


  #print bingo board method
  def print_bingo_board
    j = 0 

    print "\n"
    print "\n"
    printf "%18s", "#{cyan("B")}"
    printf "%19s", "#{cyan("I")}"
    printf "%19s", "#{cyan("N")}"
    printf "%19s", "#{cyan("G")}"
    printf "%19s", "#{cyan("O")}"
    printf "\n"
    printf "%19s", "#{cyan("---")}"
    printf "%19s", "#{cyan("---")}"
    printf "%19s", "#{cyan("---")}"
    printf "%19s", "#{cyan("---")}"
    printf "%19s", "#{cyan("---")}"
    printf "\n"


    5.times do
        @bingo_board.each do |x|
          if x[j] == '*'
            printf "%19s", "#{red(x[j])}"
          elsif x[j] == 'X'
            printf "%19s", "#{green(x[j])}"
          else
            printf "%19s", "#{blue(x[j])}"
          end
        end
        printf "\n"
        j += 1
    end

  end
end




#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

#"B" (numbers 1–15), "I" (numbers 16–30), "N" (numbers 31–45), "G" (numbers 46–60), and "O" (numbers 61–75) 

# Generate 5 random number between 01 & 15 for B colon & add it to arr_b
# Generate 5 random number between 16 & 30 for I colon & add it to arr_i
# Generate 4 random number between 31 & 45 for N colon & add it to arr_n
# Generate 5 random number between 46 & 60 for G colon & add it to arr_g
# Generate 5 random number between 61 & 75 for O colon & add it to arr_o



arr_b =  (1..15).to_a.shuffle.take(5).sort
arr_i =  (16..30).to_a.shuffle.take(5).sort
arr_n =  (31..45).to_a.shuffle.take(4).sort
arr_n.insert(2,'*')
arr_g =  (46..60).to_a.shuffle.take(5).sort
arr_o =  (61..75).to_a.shuffle.take(5).sort
board = []
board.push(arr_b)
board.push(arr_i)
board.push(arr_n)
board.push(arr_g)
board.push(arr_o)

new_game = BingoBoard.new(board)

new_game.check_draw(30)

#Reflection