#include <iostream>

int main() {
  int i = 1;
  while(i <=5){
    std::cout << i << " ";
    i++;
  }
  std::cout << "\n";
  for(int j = 1; j <= 5; j++) {
    std::cout << j << " ";
      }
  std::cout << "\n";

  int k = 1;
  do {
    std::cout << k << " ";
    k++;
  } while(k <= 5);
}