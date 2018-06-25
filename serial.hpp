
/**
 * Copyright (c) 2018 Jacob Tomaw
 */
#ifndef SERIAL_HPP_
#define SERIAL_HPP_

int testEmpty();

class MockSerial {
 private:
  int baud;
 public:
  void begin(int);
  int began();
};

extern MockSerial Serial;
#endif  // SERIAL_HPP_
