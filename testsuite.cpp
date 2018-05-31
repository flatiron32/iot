/**
 * Copyright (c) 2018 Jacob Tomaw
 */

#include <iostream>
#include "empty/empty.h"

using std::cout;
int testEverything() {
  int testCount = 0;
  cout << "Executing All Tests\n";
  cout << "\tRun Test for Empty\n";
  cout << "\t\t" << testEmpty() << " assertions passed\n";
  testCount++;
  cout << testCount << " tests executed\n";
  return testCount;
}

int main() {
  testEverything();
  return 0;
}
