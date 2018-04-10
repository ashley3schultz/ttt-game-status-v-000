# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  WIN_COMBINATIONS.detect do |wc|
    wi1 = wc[0]
    wi2 = wc[1]
    wi3 = wc[2]
    bi = [board[wi1],board[wi2],board[wi3]]
    if (bi.all? {|x| x == "X"}) || (bi.all? {|o| o == "O"})
      wc
    end
  end
end



def full?(board)
  if board.none? {|spaces| spaces == " "}
    TRUE
  else
    FALSE
  end
end


def draw?(board)
  if (won?(board) == FALSE && full?(board) == TRUE)
    TRUE
  end
end



def over?(board)
end
