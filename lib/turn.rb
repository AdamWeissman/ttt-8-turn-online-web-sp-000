def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
end

def move(board, index, token = "X")
  board[index] = token
  display_board(board)
end

def input_to_index(input)
  input.to_i - 1
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  puts "-----------"
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0,8) ? true : false
end

def position_taken?(board, index)
    (board[index] == " " || board[index] == "" || board[index] == nil) ? false : true
end
