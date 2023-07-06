import 'package:flutter/material.dart';
import 'package:flutter_0507/provider/constants/all_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable //sen add eledin deyisilmezdi

class MyCounterTextWidget extends ConsumerWidget {
  const MyCounterTextWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var count = ref.watch(myCounterNotifierProvider).count;
    return Text(
      count.toString(),
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}
