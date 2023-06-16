#include <ios>
#include <iostream>
#include <ratio>
#include <string>
#include <vector>
#include <chrono>

void up_and_down(std::vector<std::string> v, bool up) {
  for (auto it : v) {
    if (up) {
      v.push_back("a");
    } else {
      v.pop_back();
    }
  }
}

int main() {
  std::vector<std::string> text(
      1000, "We are uncovering better ways of developing software by doing it "
            "and helping others do it.");
    auto start = std::chrono::high_resolution_clock::now();
  for (auto i = 0; i <= 1000; ++i) {
    if (i % 2 == 0) {
      up_and_down(text, true);
    } else {
      up_and_down(text, false);
    }
  }
    auto stop = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::microseconds>(stop - start);
    std::cout << "Time: " << duration.count() << std::endl;
  return 0;
}
