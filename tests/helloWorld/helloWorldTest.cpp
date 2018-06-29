#ifndef TESTING
#define TESTING 1
#endif

#include <iostream>
#include "../../serial.hpp"
#include "../../projects/helloWorld/helloWorld.hpp"

using std::cout;
int main() {
  cout << "\tRun Test for Hello World\n";
  cout << "\t\t" << testHelloWorld() << " assertions passed\n";
  return 0;
}

int testHelloWorld() {
  setup();
  if (Serial.began() == 1500) {
    return 1;
  } else {
    return 0;
  }
}
