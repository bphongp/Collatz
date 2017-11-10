//Bamphiane Annie Phongphouthai
//bp8qg
//November 9, 2017
//threexinput.cpp

#include <iostream>
#include <cstdlib>
#include "timer.h"

using namespace std;
extern "C" int threexplusone(int);

int main(){
  int num;
  int count;
  timer t;

  cout<<"What number?"<<endl;
  cin>>num;
  cout<<"How many times?"<<endl;
  cin>>count;
  
  t.start();
  for(int i=0; i<count;i++){
    threexplusone(num);
  }
  t.stop();

  double time=t.getTime();

  cout<<"Result: "<<threexplusone(num)<<endl;
  cout<<"Average time: "<<(time/count)<<endl;
  return 0;
}
