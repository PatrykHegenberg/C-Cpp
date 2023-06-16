#include <iostream>
#include <string>

template <typename T>
T summe(T t1, T t2) {
    return t1 + t2;
}

int main() {
    std::cout << "String: " << summe<std::string>("Hallo", "Welt") << std::endl;
    std::cout << "Int: " << summe<int>(2, 5) << std::endl;
    std::cout << "Double: " << summe<double>(2.5, 3.5) << std::endl;
    std::cout << "Char: " << summe<char>('A', 'B') << std::endl;
}
