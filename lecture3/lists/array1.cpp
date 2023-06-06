#include <iostream>
#include <array>
#include <iterator>

using namespace std;

int main (int argc, char *argv[]) {
    array<int, 2> a1;
    cout << "size: " << a1.size() << endl;
    cout << "a1[0]: " << a1[0] << endl;
    cout << "a1[1]: " << a1[1] << endl;

    array<int, 4> a2 = {11, 22, 33};
    cout << "size: " << a2.size() << endl;
    cout << "a2[0]: " << a2[0] << endl;
    cout << "a2[1]: " << a2[1] << endl;
    cout << "a2[2]: " << a2[2] << endl;
    cout << "a2[3]: " << a2[3] << endl;
    array<int, 4>::const_iterator it = begin(a2);
    array<int, 4>::const_iterator eit = end(a2);
    for (;it != eit; ++it) {
        cout << *it << ' ';
    }
    return 0;
}
