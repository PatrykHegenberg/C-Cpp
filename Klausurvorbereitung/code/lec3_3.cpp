#include <iostream>
#include <string>

int main() {
  std::string name;
  std::string hallo = "* Hallo ";
  std::getline(std::cin, name);
  hallo += name + " *";
  std::string hAndF(hallo.length(), '*');
  std::string spaces(hallo.length()-4, ' ');
  std::cout << hAndF << "\n";
  std::cout << "* " + spaces + " *\n";
  std::cout << hallo << "\n";
  std::cout << "* " + spaces + " *\n";
  std::cout << hAndF << "\n";
}