import 'package:flutter/material.dart';
import 'package:flutter_0507/provider/constants/all_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable //sen add eledin deyisilmezdi

class MyFloatingActionButtonWidget extends ConsumerWidget {
  const MyFloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        ref.watch(myCounterNotifierProvider.notifier).increment();
      },
      child: Icon(Icons.add),
    );
  }
}
