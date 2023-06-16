#include <ios>
#include <iostream>
#include <ratio>
#include <string>
#include <vector>
#include <chrono>

void up_and_down_value(std::vector<std::string> v, bool up) {
  for (auto i= 0; i < v.size(); i++) {
    if (up) {
      v[i].push_back('a');
    } else {
      v[i].pop_back();
    }
  }
}

void up_and_down_ref(std::vector<std::string>& v, bool up) {
  for (auto i= 0; i < v.size(); i++) {
    if (up) {
      v[i].push_back('a');
    } else {
      v[i].pop_back();
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
      up_and_down_value(text, true);
    } else {
      up_and_down_value(text, false);
    }
  }
    auto stop = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::microseconds>(stop - start);
    std::cout << "Time: " << duration.count() << std::endl;

    auto start1 = std::chrono::high_resolution_clock::now();
  for (auto i = 0; i <= 1000; ++i) {
    if (i % 2 == 0) {
      up_and_down_ref(text, true);
    } else {
      up_and_down_ref(text, false);
    }
  }
    auto stop1 = std::chrono::high_resolution_clock::now();
    auto duration1 = std::chrono::duration_cast<std::chrono::microseconds>(stop1 - start1);
    std::cout << "Time: " << duration1.count() << std::endl;
    std::cout << "Verhältnis: " << duration / duration1 << std::endl;
  return 0;
}
