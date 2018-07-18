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

winindex = 0

  position1 = WIN_COMBINATIONS[winindex][0]
  position2 = WIN_COMBINATIONS[winindex][1]
  position3 = WIN_COMBINATIONS[winindex][2]

  playerposition1 = board[position1]
  playerposition2 = board[position2]
  playerposition3 = board[position3]

  if playerposition1 == "X" && playerposition2 == "X" && playerposition3 == "X"
    WIN_COMBINATIONS[winindex]
  elsif playerposition1 == "O" && playerposition2 == "O" && playerposition3 == "O"
    WIN_COMBINATIONS[winindex]
  else nil
  end
end
