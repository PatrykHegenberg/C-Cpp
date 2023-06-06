#include <iostream>
#include <map>
#include <string>

using namespace std;

int main(int argc, char *argv[]) {
    // Ein Programm, welches einen String von der Kommandozeile einliest.
    // Die Anzahl an Leerzeichen zählt und ausgibt.
    // Dazu wird ein Container verwendet.
    cout << "Gib einen Satz ein:" << endl;
    string eingabe;
    map<char, int> leer;
    getline(cin, eingabe);
    for (char c : eingabe) {
        if(c == ' ') {
        leer[c]++;
        }
    }
    cout << "Anzahl der Leerzeichen: " << leer[' '] << endl;

  return 0;
}
