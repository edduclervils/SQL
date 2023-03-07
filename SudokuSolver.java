
public class SudokuSolver {

    public boolean isValidSudoku(char[][] board) {
        char currentValue = '0';
        for(int row = 0; row < 9; row++){
            for (int column = 0; column < 9; column++ ){
                if(board[row][column] != '.' ){
                    currentValue = board[row][column];
                    for (int theRest = column+1; theRest < 9; theRest++){
                        if (currentValue == board[row][theRest]){
                            return false;
                        }
                        else {
                            column = theRest;
                        }
                    }
                }
            }
        }

        for (int column = 0; column < 9; column++){
            for (int row = 0; row < 9; row++){
                if (board[row][column] != '.'){
                    currentValue = board[row][column];
                    for (int theRest = row+1; theRest < 9; theRest++){
                        if (currentValue == board[theRest][column]){
                            return false;
                        }
                        else{
                            row = theRest;
                        }
                    }
                }
            }
        }

        for (int x = 0; x < 3; x++) {
            for (int y = 0; y < 3; y++) {
                for (int row = 0; row < 3; row++) {
                    for (int column = 3 * x; column < (3 * x + 3); column++) {
                        if (board[3 * y + row][column] != '.') {
                            currentValue = board[3 * y + row][column];
                            for (int theRestRow = 3*y +row; theRestRow < (3*y+3); theRestRow++) {
                                for (int theRestColumn = (3*x); theRestColumn < (3 * x + 3); theRestColumn++) {
                                    if (currentValue == board[theRestRow][theRestColumn]) {
                                        if(row != theRestRow && column !=theRestColumn){
                                            return false;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }



        return true;
    }
}
