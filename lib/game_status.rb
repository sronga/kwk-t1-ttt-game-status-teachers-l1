# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,4,8],
  [6,4,2],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won(board)

  WIN_COMBINATIONS.each do |winindex|

  puts "Hi this is the #{winindex}"

  position1 = winindex[0]
  position2 = winindex[1]
  position3 = winindex[2]

  playerposition1 = board[position1]
  playerposition2 = board[position2]
  playerposition3 = board[position3]

  if playerposition1 == "X" && playerposition2 == "X" && playerposition3 == "X"
    winindex
  elsif playerposition1 == "O" && playerposition2 == "O" && playerposition3 == "O"
    winindex
  else false

  end
  end
end
