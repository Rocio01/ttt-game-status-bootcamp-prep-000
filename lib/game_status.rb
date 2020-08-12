# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
  ]
  
 def won?(board)
    WIN_COMBINATIONS.detect do |tricky| 
    board[tricky[0]] == board[tricky[1]] && 
    board[tricky[1]] == board[tricky[2]] &&
    position_taken?(board, tricky[0])
  end
end

def full?(board)
  board.all? {|w| w == "X" || w == "O"}
end

  
  
  
  