#include <iostream>

using namespace std;
int test() {
  cout<<"Run Test\n";
  return 0;
}

int main () {
  cout<<"Hello World!\n";
  return test();
}
