#include <iostream>
#include "../../projects/empty/empty.hpp"

using std::cout;
int main() {
  cout << "\tRun Test for Empty\n";
  cout << "\t\t" << testEmpty() << " assertions passed\n";
  return 0;
}

int testEmpty() {
  int assertionCount = 0;
  setup();
  assertionCount++;
  loop();
  assertionCount++;
  return assertionCount;
}
