#include <iostream>
#include <iterator>
#include <set>

using namespace std;

int main (int argc, char *argv[]) {
    set<int> s;
    s.insert(4);
    s.insert(1);
    s.insert(6);
    s.insert(3);
    s.insert(2);
    s.insert(5);
    for (set<int>::const_iterator it = begin(s); it != end(s); ++it) {
        cout << *it << ' ';
    }
    cout << '\n';
    return 0;
}
