#include <iostream>
#include <limits>

int main() {
    int i1, i2;
    for (;;){
        std::cout << "Bitte gib eine Zahl ein: ";
        std::cin >> i1;
        if (!std::cin.fail()){
            break;
        }
        std::cout << "Fehler - Keine Zahl! \n";
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
    }
    for (;;){
        std::cout << "Bitte gib eine Zahl ein: ";
        std::cin >> i2;
        if (!std::cin.fail()){
            break;
        }
        std::cout << "Fehler - Keine Zahl! \n";
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
    }
    std::cout << i1 + i2 << std::endl;
}
