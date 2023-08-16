#include <iostream>

int main() {
  for(int i = 1; i <=10; i++){
    std::cout << i;
    (i % 2 == 0)? std::cout << " durch 2 teilbar.": std::cout << " nicht durch 2 teilbar";
    (i % 3 == 0)? std::cout << " durch 3 teilbar.": std::cout << " nicht durch 3 teilbar";
    std::cout << "\n";
  }
}