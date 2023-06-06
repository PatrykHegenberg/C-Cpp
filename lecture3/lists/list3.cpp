// Range basierte For-Schleife
//
#include <iostream>
#include <vector>

using namespace std;

int main() {
  vector<int> v;
  v.push_back(2);
  v.push_back(4);
  v.push_back(8);
  v.push_back(1);
  for (int value : v) {
    cout << value << ' ';
  }
  cout << '\n';
}
