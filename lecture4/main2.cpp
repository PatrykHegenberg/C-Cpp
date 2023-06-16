#include <cstddef>
#include <fstream>
#include <ios>
#include <iostream>
#include <vector>

using namespace std;

vector<vector<char>> readSudoku() {
  vector<vector<char>> sudoku(9, vector<char>(9));
  string eingabe;
  cout << "Willkommen im Sudoku-Löser" << endl;
  cout << "Gib bitte das Sudoku ein:" << endl;
  for (auto i = 0; i < 9; i++) {
    cout << "Eingabezeile " << i + 1 << ": ";
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
      cout << "   ---   ---   ---" << endl;
    }
    for (size_t j = 0; j < sudoku[i].size(); j++) {
      if (j % 3 == 0) {
        cout << " | ";
      }
      cout << sudoku[i][j];
    }
    cout << " | " << endl;
  }
  cout << "   ---   ---   ---" << endl;
}

void writeToFile(vector<vector<char>> sudoku) {
  fstream file;
  std::cout << "Eingabe" << std::endl;
  file.open("sudoku.txt", std::ios_base::out);
  for (auto i = 0; i < sudoku.size(); i++) {
    for (auto j = 0; j < sudoku[i].size(); j++) {
      std::cout << sudoku[i][j];
      file << sudoku[i][j] << std::endl;
    }
        std::cout << std::endl;
  }

  file.close();
}

//vector<vector<char>> readFromFile() {
//  fstream infile;
//  infile.open("sudoku.txt", std::ios_base::in);
//  std::cout << "Ausgabe";
//  std::string t;
//  std::vector<vector<char>> sudokuNeu(9, vector<char>(9));
//  for (auto i = 0; i < sudokuNeu.size(); i++) {
//    for (auto j = 0; j < sudokuNeu[i].size(); j++) {
//      while (getline(infile, t)) {
//        std::cout << t[0];
//        sudokuNeu[i][j] = t[0];
//      }
//    }
//        std::cout << std::endl;
//  }
//  while (getline(infile, t)) {
//  }
//  return sudokuNeu;
//}

void saveSudokuAsText(const vector<vector<char>>& sudoku, const string& filename) {
  ofstream outfile(filename);
  if (!outfile) {
    cerr << "Fehler beim Öffnen der Datei!" << endl;
    return;
  }

  for (size_t i = 0; i < sudoku.size(); i++) {
    if (i % 3 == 0) {
      outfile << "   ---   ---   ---" << endl;
    }
    for (size_t j = 0; j < sudoku[i].size(); j++) {
      if (j % 3 == 0) {
        outfile << " | ";
      }
      outfile << sudoku[i][j];
    }
    outfile << " | " << endl;
  }
  outfile << "   ---   ---   ---" << endl;

  outfile.close();
  cout << "Sudoku erfolgreich als " << filename << " gespeichert." << endl;
}

void saveSudokuAsHTML(const vector<vector<char>>& sudoku, const string& filename) {
  ofstream outfile(filename);
  if (!outfile) {
    cerr << "Fehler beim Öffnen der Datei!" << endl;
    return;
  }

  outfile << "<html>\n<head>\n<style>\ntable {\n  border-collapse: collapse;\n}\ntd {\n  border: 1px solid black;\n  width: 30px;\n  height: 30px;\n  text-align: center;\n}\n</style>\n</head>\n<body>\n<table>\n";

  for (size_t i = 0; i < sudoku.size(); i++) {
    outfile << "<tr>";
    for (size_t j = 0; j < sudoku[i].size(); j++) {
      outfile << "<td>";
      if (sudoku[i][j] != '0') {
        outfile << sudoku[i][j];
      }
      outfile << "</td>";
    }
    outfile << "</tr>\n";
  }

  outfile << "</table>\n</body>\n</html>";

  outfile.close();
  cout << "Sudoku erfolgreich als " << filename << " gespeichert." << endl;
}

vector<vector<char>> readFromFile() {
  fstream infile;
  infile.open("sudoku.txt", std::ios_base::in);
  std::cout << "Ausgabe" << std::endl;
  std::string t;
  std::vector<vector<char>> sudokuNeu(9, vector<char>(9));
  for (auto i = 0; i < sudokuNeu.size(); i++) {
    for (auto j = 0; j < sudokuNeu[i].size(); j++) {
      if (getline(infile, t)) {
        std::cout << t[0];
        sudokuNeu[i][j] = t[0];
      }
    }
    std::cout << std::endl;
  }
  infile.close(); // Schließe die Datei nach dem Lesen
  return sudokuNeu;
}

int main() {
  auto sudoku = readSudoku();
  printSudoku(sudoku);
  writeToFile(sudoku);
  auto sudokuNeu = readFromFile();
  printSudoku(sudokuNeu);
saveSudokuAsHTML(sudokuNeu, "Sudoku.html");
    saveSudokuAsText(sudokuNeu, "sudoku_text.txt");
  return 0;
}
