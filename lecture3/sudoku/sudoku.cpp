#include <cstddef>
#include <iostream>
#include <vector>

using namespace std;

vector<vector<char>> readSudoku() {
    vector<vector<char>> sudoku(9, vector<char>(9));
    string eingabe;
    cout << "Willkommen im Sudoku-Löser" << endl;
    cout << "Gib bitte das Sudoku ein:" << endl;
    for (auto i = 0; i < 9; i++) {
        cout << "Eingabezeile " << i+1 << ": ";
        getline(cin, eingabe);
        for (auto j = 0; j < 9; j++) {
            sudoku[i][j] = eingabe[j];
        }
    }
    return sudoku;
}

void printSudoku(vector<vector<char>> sudoku) {
    for (size_t i = 0; i < sudoku.size(); i++) {
        if (i % 3 == 0) {
            cout << " --- --- ---" << endl;
        }
        for (size_t j = 0; j < sudoku[i].size(); j++) {
            if (j % 3 == 0) {
                cout << " | ";
            }
            cout << sudoku[i][j];
        }
        cout << " | " << endl;
    }
    cout << " --- --- --- " << endl;
}

bool isValid(vector<vector<char>>& sudoku, int row, int col, char num) {
    // Überprüfe, ob num in der Reihe gültig ist
    for (int i = 0; i < 9; i++) {
        if (sudoku[row][i] == num) {
            return false;
        }
    }

    // Überprüfe, ob num in der Spalte gültig ist
    for (int i = 0; i < 9; i++) {
        if (sudoku[i][col] == num) {
            return false;
        }
    }

    // Überprüfe, ob num im 3x3-Unterquadrat gültig ist
    int startRow = (row / 3) * 3;
    int startCol = (col / 3) * 3;
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            if (sudoku[startRow + i][startCol + j] == num) {
                return false;
            }
        }
    }

    return true;
}

bool solveSudoku(vector<vector<char>>& sudoku) {
    for (int row = 0; row < 9; row++) {
        for (int col = 0; col < 9; col++) {
            if (sudoku[row][col] == ' ') {
                for (char num = '1'; num <= '9'; num++) {
                    if (isValid(sudoku, row, col, num)) {
                        sudoku[row][col] = num;

                        if (solveSudoku(sudoku)) {
                            return true;
                        }

                        sudoku[row][col] = ' '; // Backtracking
                    }
                }
                return false; // Keine gültige Lösung gefunden
            }
        }
    }
    return true; // Sudoku gelöst
}
int main() {
    vector<vector<char>> sudoku = readSudoku();
    cout << "Eingegebenes Sudoku:" << endl;
    printSudoku(sudoku);

    if (solveSudoku(sudoku)) {
        cout << "Gelöstes Sudoku:" << endl;
        printSudoku(sudoku);
    } else {
        cout << "Keine Lösung gefunden!" << endl;
    }

    return 0;
}
