/**
 * Copyright (c) 2018 Jacob Tomaw
 */

#include "./empty.hpp"

void setup() {
}

void loop() {
}

int testEmpty() {
  int assertionCount = 0;
  setup();
  assertionCount++;
  loop();
  assertionCount++;
  return assertionCount;
}
