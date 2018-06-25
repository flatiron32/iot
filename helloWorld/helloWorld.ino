/**
 * Copyright (c) 2018 Jacob Tomaw
 */
#include "helloWorld.hpp"
#include "../serial.hpp"
void setup() {
  Serial.begin(1500);
}

int testHelloWorld() {
  setup();
  if (Serial.began() == 1500) {
    return 1;
  } else {
    return 0;
  }
}
