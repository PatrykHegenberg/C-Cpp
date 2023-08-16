#include <iostream>
#include <limits>

int main() {
  int num1, num2, sum;
  for(;;){
  std::cout << "Bitte gib die erste Zahl ein: ";
  std::cin >> num1;
    if(!std::cin.fail()){
      break;
    }
    std::cout << "Bitte gib eine Zahl ein.";
    std::cin.clear();
    std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
  }
  for(;;){
  std::cout << "Bitte gib die zweite Zahl ein: ";
  std::cin >> num2;
    if(!std::cin.fail()){
      break;
    }
    std::cout << "Bitte gib eine Zahl ein.";
    std::cin.clear();
    std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
  }
  sum = num1 + num2;
  std::cout << "Das Ergebnis ist: " << sum << "\n";
  
  return 0;
}