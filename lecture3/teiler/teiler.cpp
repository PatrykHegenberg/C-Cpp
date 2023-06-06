#include <iostream>
#include <string>
#include <vector>

std::vector<int> istTeiler(int n) {
  std::vector<int> teiler;
  for(int j = 1; j <= n; j++) {
    if(n % j == 0) {
      teiler.push_back(j);
    }
  }
  return teiler;
}

int main() {
  int eingabe;
  for (;;){
    std::cout << "Bitte gib eine Zahl ein: ";
    std::cin >> eingabe;
    if (!std::cin.fail()){
      break;
    }
  }
  std::vector<int> teiler = istTeiler(eingabe);
  std::cout << "Eingabe: " << eingabe << std::endl;
  std::cout << "Ausgabe: {";
  for(int k = 0; k < teiler.size(); k++) {
    std::cout << " " << teiler[k];
  }
  std::cout << " }" <<std::endl;
  if(teiler.size() == 2){
    std::cout << "Ausgabe: Primzahl" << std::endl;
  } else {
    std::cout << "Ausgabe: keine Primzahl" <<std::endl;
  }
}