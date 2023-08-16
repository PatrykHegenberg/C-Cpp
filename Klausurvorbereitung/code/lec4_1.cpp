#include <iostream>

template<typename T>
void swap(T& arg1, T& arg2){
  T tmp;
  tmp = arg2;
  arg2 = arg1;
  arg1 = tmp;
}

int main() {
  int i1 = 2;
  int i2= 4;
  double d1 = 3.14;
  double d2 = 2.72;
  char c1 = 'C';
  char c2 = 'E';
  std::cout << "Vor dem Wechsel: 1. = " << i1 << " 2. = " << i2 << "\n";
  swap(i1, i2);
  std::cout << "Nach dem Wechsel: 1. = " << i1 << " 2. = " << i2 << "\n";
  std::cout << "Vor dem Wechsel: 1. = " << d1 << " 2. = " << d2 << "\n";
  swap(d1, d2);
  std::cout << "Nach dem Wechsel: 1. = " << d1 << " 2. = " << d2 << "\n";
  std::cout << "Vor dem Wechsel: 1. = " << c1 << " 2. = " << c2 << "\n";
  swap(c1, c2);
  std::cout << "Nach dem Wechsel: 1. = " << c1 << " 2. = " << c2 << "\n";
}