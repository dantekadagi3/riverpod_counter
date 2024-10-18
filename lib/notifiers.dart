//import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Counter extends Notifier<int> {
  //the int is the state which is going to be obswervable
  @override
  int build() {
    return 0;
  }

  void increment() {
    //state is the current value
    state++;
  }

  void decrement() {
    if (state > 0) {
      state--;
    } else {
      state = 0;
    }
  }
}
//every notifier needs a build method which tells it what its initial value is

//this line of code allows us to  update the value of the counter
//it is a notivier provider whose type is Counter and the value is int

//counter.new  allows us to create a counter with no parameters
final counterProvider = NotifierProvider<Counter, int>(Counter.new);
