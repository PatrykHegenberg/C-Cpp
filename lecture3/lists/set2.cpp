#include <iostream>
#include <iterator>
#include <set>

using namespace std;

int main (int argc, char *argv[]) {
    set<int> primes{1, 2, 3, 5, 7, 11 };
    set<int>::const_iterator fit = primes.find(3);
    if (fit != end(primes)) {
       cout << *fit << " ist im Set drin\n";
    } else {
        cout << "3 ist NICHT im Set drin\n";
    }
    fit = primes.find(4);
    if (fit != end(primes)) {
        cout << *fit << " ist im Set drin\n";
    } else {
    cout << "4 ist NICHT im Set drin\n";
    }
    return 0;
}
