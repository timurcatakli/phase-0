# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [6] hours on this challenge.


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
    @hash_draw = {'B'=>15, 'I'=>30, 'N'=>45, 'G'=>60, 'O'=>75}
    draw_letter = @hash_draw.keys.sample
    @draw_number = rand((@hash_draw[draw_letter]-14)..@hash_draw[draw_letter])
    draw = draw_letter + @draw_number.to_i.to_s
    return draw
  end



  #check_draw method
  def check_draw(draw_times)
    draw_times.times do 
      print  call_draw + ' - '
      i = 0
      @bingo_board.each do |x|
        x.each_with_index do |item, index| 
          if item == @draw_number
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

    2.times {print "\n"}
    @hash_draw.each { |k,v| printf "%18s", "#{cyan("#{k}")}" }
    printf "\n"
    5.times {printf "%18s", "#{cyan("-----")}"}
    printf "\n"


    5.times do
        @bingo_board.each do |x|
          if x[j] == '*'
            printf "%18s", "#{red(x[j])}"
          elsif x[j] == 'X'
            printf "%18s", "#{green(x[j])}"
          else
            printf "%18s", "#{blue(x[j])}"
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


def create_board
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
  return board
end

board = create_board()
new_game = BingoBoard.new(board)
# Enter how many draws you want to make
new_game.check_draw(12)



#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Although it wasn't very hard, the problem I am having is I always end up changing the pseudocode after I start coding.
#I dont follow my pseudocode plan step by step, even small, something different always comes up.

# --------------------------------------------------------------------------------

# What are the benefits of using a class for this challenge?
# First of all having all these methods under one roof is a good organization skill. Also it is easier to pass instance variables between methods.

# --------------------------------------------------------------------------------

#How can you access coordinates in a nested array?
# A nested each statement solves the problem. Also creating an integer like i = 0 and incrementing it by one at the end of each loop helps. Sometimes it is better to iterate using each_with_index

# --------------------------------------------------------------------------------

# What methods did you use to access and modify the array?
#I used .each and each_with_index

# --------------------------------------------------------------------------------

#Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

# I learnt   def red(text);    colorize(text, 31);   end
# I also learnt more about printf
# They are used to colorize strings and insert spaces between variables in order to make them look pretty and easier to read.

# --------------------------------------------------------------------------------
# How did you determine what should be an instance variable versus a local variable?
# If a variable is to be used in more than one method inside the class then I made it an instance variable.

# --------------------------------------------------------------------------------

# What do you feel is most improved in your refactored solution?
# I am gonna honest with you. Either I am very skilled or I don't know much about refactoring. I am looking at my code and I dont see anything to refactor. I appreciate if you can help me in that respect.

# --------------------------------------------------------------------------------






