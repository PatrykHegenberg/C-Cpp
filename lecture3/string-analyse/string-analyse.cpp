#include <iostream>
#include <string>
#include <vector>

int main() {
  std::string eingabe;
  std::vector<size_t> positions;
  size_t pos;
  std::string search;
  
  std::cout << "Gib eine beliebige Zeichenfolge ein:" << std::endl;
  std::getline(std::cin, eingabe);
  std::cout << eingabe << std::endl;
  
  while (eingabe.length() > 0) {
    search = eingabe[0];
    pos = eingabe.find(search,0);
    
    while(pos != std::string::npos) {
      positions.push_back(pos);
      pos = eingabe.find(search, pos+1);
      eingabe.erase(eingabe.find(search),1);
    }
    std::cout << search << ": " << positions.size() << std::endl;
    positions.clear();
  }  
}