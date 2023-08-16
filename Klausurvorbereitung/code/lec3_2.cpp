#include <ios>
#include <iostream>
#include <limits>

int main(){
  char a;
  while(true){
    std::cout << "Bitte gib eine Zahl zwischen 0 und 9 ein: ";
    std::cin >> a;
  switch(a){
    case '0':
      std::cout << "<- null\n";
      break;
    case '1':
      std::cout << "<- eins\n";
      break;
    case '2':
      std::cout << "<- zwei\n";
      break;
    case '3':
      std::cout << "<- drei\n";
      break;
    case '4':
      std::cout << "<- vier\n";
      break;
    case '5':
      std::cout << "<- fünf\n";
      break;
    case '6':
      std::cout << "<- sechs\n";
      break;
    case '7':
      std::cout << "<- sieben\n";
      break;
    case '8':
      std::cout << "<- acht\n";
      break;
    case '9':
      std::cout << "<- neun\n";
      break;
    default:
      std::cout << "<- Ende\n";
        return 0;
      break;
  }
    }
}