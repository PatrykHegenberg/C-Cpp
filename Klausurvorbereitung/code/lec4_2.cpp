#include <iostream>
#include <fstream>
#include <string>

int main() {
  std::string text = "Dies ist der Beispieltext\nDieser soll in der Datei stehen.";
  std::ofstream out("tmp.txt");
  out << text; 
}