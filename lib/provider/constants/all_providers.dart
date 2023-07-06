import 'package:flutter_0507/model/counter_model.dart';
import 'package:flutter_0507/provider/business/counter_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final titleProvider = Provider<String>((ref) => "Riverpod App");

final myTextProvider = Provider<String>((ref) {
  return "Counter App";
});

// final myCounterTextProvider = StateProvider<int>((ref) {
//   return 0;
// });

final myCounterNotifierProvider =
    StateNotifierProvider<CounterNotifierManager, CounterModel>((ref) {
  return CounterNotifierManager();
});

final myCoupleProvider = Provider<bool>(
  (ref) {
    return ref.watch(myCounterNotifierProvider).count.isEven;
  },
);
