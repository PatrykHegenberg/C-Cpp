#include <cstddef>
#include <iostream>
#include <vector>

using namespace std;

vector<vector<char>> readSudoku() {
    vector<vector<char>> sudoku(9, vector<char>(9));
    string eingabe;
    cout << "Willkommen im Sudoku-Loeser" << endl;
    cout << "Gib bitte das Sudoku ein:" << endl;
    for (auto i = 0; i < 9; i++) {
        cout << "Eingabezele " << i+1 << ": ";
        getline(cin, eingabe);
        for (auto j = 0; j < 9; j++) {
            for (auto k = 0; k < 9; k++) {
                sudoku[i][j] = eingabe[j];
            }
        }
    }
    return sudoku;
}

void printSudoku(vector<vector<char>> sudoku) {
    cout << " --- --- --- " <<endl;
    for (size_t i = 0; i < sudoku.size(); i++) {
        for (size_t j = 0; j < sudoku[i].size(); j++) {
            if (j % 3 == 0) {
                cout << "|";
            }
            cout << sudoku[i][j];
        }
        cout << "|" << endl;
    }
    cout << " --- --- --- " <<endl;
}

vector<vector<char>> solveSudoku(vector<vector<char>> sudoku) {
    // This function will solve the sudoku
    int testValue = 1;
    for (size_t i = 0; i < sudoku.size(); i++) {
        for (size_t j = 0; j < sudoku[i].size(); j++) {
            if (sudoku[i][j] == ' ') {
                if (testValue) {
                
                }
                sudoku[i][j] = testValue;
            }
        }
    }
    return sudoku;
}

int main(){
    vector<vector<char>> sudoku = readSudoku();
    printSudoku(sudoku);
    return 0;
}
