#include <iostream>
#include <limits>

int main() {
  char c;
  for (;;) {
    std::cout << "Bitte gib eine Ziffer ein: \n";
    std::cin >> c;
    // Eine if-Anweisung, die prüft ob der eingebene char zwischen 0 und 9 steht
    if (c >= '0' && c <= '9') {
      switch (c) {
      case '0': {
        std::cout << c << " -> null \n";
        break;
      }
      case '1': {
        std::cout << c << " -> eins \n";
        break;
      }
      case '2': {
        std::cout << c << " -> zwei \n";
        break;
      }
      case '3': {
        std::cout << c << " -> drei \n";
        break;
      }
      case '4': {
        std::cout << c << " -> vier \n";
        break;
      }
      case '5': {
        std::cout << c << " -> fünf \n";
        break;
      }
      case '6': {
        std::cout << c << " -> sechs \n";
        break;
      }
      case '7': {
        std::cout << c << " -> sieben \n";
        break;
      }
      case '8': {
        std::cout << c << " -> acht \n";
        break;
      }
      case '9': {
        std::cout << c << " -> neun \n";
        break;
      }
      default: {
        std::cout << c << " -> Ende \n";
        break;
      }
      }
    } else {
      std::cout << c << " -> Ende \n";
      break;
    }
  }
}
