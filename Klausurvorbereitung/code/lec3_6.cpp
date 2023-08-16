#include <iostream>
#include <string>
#include <vector>

int main() {
  std::vector<std::string> nums = {"null", "eins", "zwei", "drei", "vier", "fünf", "sechs", "sieben", "acht", "neun"};
  char num;
  while(true) {
    std::cout << "Bitte geben Sie eine Zahl ein: ";
    std::cin >> num;
    if(num >= '0' && num <= '9'){
      std::cout << num << " -> " << nums[num-48] << "\n";
    }
    else {
      break;
    }
  }
}