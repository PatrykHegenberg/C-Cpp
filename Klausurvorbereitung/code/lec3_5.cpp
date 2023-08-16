#include <iostream>
#include <string>
#include <vector>
#include <iomanip>

int main() {
  std::vector<std::string> names;
  std::string name;
  std::string hallo = "* Hallo ";
  int longest = 0;
  int longestLen = 0;
  while(true) {
    std::cout << "Gib einen Namen ein: ";
    std::getline(std::cin, name);
    if(name == ""){
      break;
    }
    names.push_back(name);
  }
  for(int i = 0; i < names.size(); i++) {
    if(names[i].length() > longestLen) {
      longest = i;
      longestLen = names[i].length();
    }
  }
  std::string hAndF((hallo + names[longest]).length()+2, '*');
  std::string spaces((hallo + names[longest]).length(), ' ');
  std::cout << hAndF << "\n";
  std::cout << "*" << spaces << "*\n";
  for(auto n: names) {
    std::cout << hallo << n << std::setw(hAndF.length() - (hallo + n).length()-1) << std::cout.fill(' ') <<"*\n";
  }
  std::cout << "*" << spaces << "*\n";
  std::cout << hAndF << "\n";
}