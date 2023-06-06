#include <iostream>
#include <iterator>
#include <map>
#include <string>

using namespace std;

int main() {
  map<int, string> m;
  m.insert({2, "Heinrich"});
  m.insert({3, "Ede"});
  m.insert({4, "Ansgar"});
  m.insert({1, "Willi"});
  m.insert({5, "Tom"});
  for (map<int, string>::const_iterator it = begin(m); it != end(m); ++it) {
    cout << it->first << ' ' << it->second << '\n';
  }
  cout << '\n';
  for (map<int, string>::const_iterator it = begin(m); it != end(m); ++it) {
    int key = it->first;
    string value(it->second);
    cout << key << " -> " << value << '\n';
  }

  map<string, string> n;
  n.insert({"Detlef", "Wilkening"});
  n.insert({"Bjarne", "Stroustrup"});
  n.insert({"Dennis", "Ritchie"});
  cout << "Wert von Detlef: " << n["Detlef"] << '\n';
  cout << "Wert von Bjarne: " << n["Bjarne"] << '\n';
  cout << "Wert von Dennis: " << n["Dennis"] << '\n';
  n["Detlef"] = "Wilky";
  cout << "Neuer Wert von Detlef: " << n["Detlef"] << '\n';
  return 0;
}
