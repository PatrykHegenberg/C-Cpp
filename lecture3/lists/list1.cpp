#include <iostream>
#include <iterator>
#include <list>
#include <string>

using namespace std;

int main (int argc, char *argv[]) {
    list<string> l;
    l.push_back("Backe");
    l.push_back("backe");
    l.push_back("Kuchen");
    for (list<string>::const_iterator it = begin(l); it != end(l); ++it) {
        cout << *it << ' ';
    }
    for (list<string>::const_iterator it = begin(l); it != end(l); ++it) {
        cout << (*it).length() << ' ';
    }
    for (list<string>::const_iterator it = begin(l); it != end(l); ++it) {
        cout << it->length() << ' ';
    }
    std::cout << "\n" << std::endl;
    return 0;
}    

