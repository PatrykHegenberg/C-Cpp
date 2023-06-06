#include <iostream>
#include <string>
#include <unordered_set>

using namespace std;

int main() {
  unordered_set<string> s{"Tom", "Eva"};
  s.insert("Lea");
  s.insert("Max");
  s.insert("Ada");
  for (unordered_set<string>::const_iterator it = begin(s); it != end(s); ++it) {
    cout << *it << ' ';
  }
  cout << '\n';
}