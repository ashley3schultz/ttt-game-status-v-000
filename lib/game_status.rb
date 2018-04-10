# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  WIN_COMBINATIONS.detect do |i|
    i1 = i[0]
    i2 = i[1]
    i3 = i[2]
    bi = [board[i1],board[i2],board[i3]]
    if bi.select? {|ck| ck == "X"} || bi.all? {|ck| ck == "O"}
    end
  end
end



def full?(board)
  board.none? do |i|
    if i == " "
      TRUE
    end
  end
end



def draw?(board)
  if (won?(board) == FALSE && full?(board) == TRUE)
    TRUE
  else (won?(board) == FALSE && full?(board) == FALSE)
    FALSE
  end
end



def over?(board)
  if won?(board) != FALSE
    TRUE
  else full?(board) == TRUE
    TRUE
  end
end


def winner(board)
  if over?(board) = TRUE
    won?(board)
    winner
  else
    nil
  end
end
  
