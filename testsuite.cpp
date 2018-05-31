/**
 * Copyright (c) 2018 Jacob Tomaw
 */

#include <iostream>
#include "./empty.h"

using std::cout;
int testEverything() {
  cout << "Run All Test\n";
  cout << "\tRun Test for Empty\n";
  return testEmpty();
}

int main() {
  cout << "Executing All Tests\n";
  return testEverything();
}
