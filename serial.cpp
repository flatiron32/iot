/**
 * Copyright (c) 2018 Jacob Tomaw
 */

#include "./serial.hpp"

void MockSerial::begin(int b) {
  baud = b;
}

int MockSerial::began() {
  return 0;
}


MockSerial Serial;
