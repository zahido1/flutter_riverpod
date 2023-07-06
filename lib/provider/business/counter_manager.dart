import 'package:flutter_0507/model/counter_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifierManager extends StateNotifier<CounterModel> {
  CounterNotifierManager() : super(CounterModel(count: 0));

  void increment() {
    var count = state.count;
    state = CounterModel(count: count + 1);
  }

  void decrement() {
    var count = state.count;
    state = CounterModel(count: count - 1);
  }
}
