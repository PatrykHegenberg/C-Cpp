#include <iostream>
using namespace std;
int main() {
 int n;
 cout << "Gib die Anzahl der Fibonacci-Zahlen ein, die generiert werden sollen: ";
 cin >> n;
 int erste = 0, zweite = 1;
 if (n >= 1) {
 cout << "Fibonacci-Folge: " << erste;
 }
 for (auto i = zweite; i <= n ; i++) {
 cout << ", " << zweite;
 int naechste = erste + zweite;
 erste = zweite;
 zweite = naechste;
 }
 cout << endl;
 return 0;
}