/**
 * Copyright (c) 2018 Jacob Tomaw
 */

#include <iostream>
#include "./empty.h"

using std::cout;
int test() {
  cout << "Run Test\n";
  return 0;
}

int main() {
  cout << "Hello World!\n";
  return test();
}
