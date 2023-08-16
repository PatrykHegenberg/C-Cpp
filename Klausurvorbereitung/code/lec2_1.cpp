#include <iostream>

int main() {
  const int n1 = 10;
  const int n2 = 5;

  int add, sub, mul, div, mod;
  add = n1 + n2;
  sub = n1 - n2;
  mul = n1 * n2;
  div = n1 / n2;
  mod = n1 % n2;
  std::cout << "add: " << add << "\n";
  std::cout << "sub: " << sub << "\n";
  std::cout << "mul: " << mul << "\n";
  std::cout << "div: " << div << "\n";
  std::cout << "mod: " << mod << "\n";

  return 0;
}