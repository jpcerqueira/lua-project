local board = {}
board[1] = {"♖", "♘", "♗", "♕", "♔", "♗", "♘", "♖"}
board[2] = {"♙", "♙", "♙", "♙", "♙", "♙", "♙", "♙"}
board[3] = {}
board[4] = {}
board[5] = {}
board[6] = {}
board[7] = {"♟︎", "♟︎", "♟︎", "♟︎", "♟︎", "♟︎", "♟︎", "♟︎"}
board[8] = {"♜", "♞", "♝", "♛", "♚", "♝", "♞", "♜"}

for _, row in pairs(board) do -- usa o _ no lugar do 'key' por não ser necessário usa-lo nesse contexto, é uma boa prática na lua
    local rowString = ''
    for _, piece in pairs(row) do
        rowString = rowString .. piece .. ' '
    end
    print(rowString)
end