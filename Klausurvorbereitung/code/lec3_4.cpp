#include <iostream>
#include <string>
#include <map>

int main() {
  std::string text;
  std::map<char, int> tMap;
  std::getline(std::cin, text);
  for(auto n: text) {
    tMap[n]++;
  }
  std::cout << text << " -> hat " << tMap[' '] << " Leerzeichen.\n";
}