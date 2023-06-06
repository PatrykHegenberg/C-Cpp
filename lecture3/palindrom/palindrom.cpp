#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

int main() {
  int res;
  std::vector<int> pals;
  std::string rev;
  for(int start = 70; start <= 99; start++) {
    for(int end = 99; end >= 70; end--) {
      int res = start * end;
      rev = "";
      std::string s_res = std::to_string(res); 
      for(int i = s_res.length() -1; i >= 0; i--){
        rev += s_res[i];
      }
      if(s_res == rev) {
        if(std::count(pals.begin(), pals.end(), res)){
          continue;
          } else {
          pals.push_back(res);
          std::cout << start << " * " << end << " = " << res << std::endl;
        }
      }
    }
  }
}