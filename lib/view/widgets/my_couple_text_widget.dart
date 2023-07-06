import 'package:flutter_0507/provider/constants/all_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class MyCoupleTextWidget extends ConsumerWidget {
  const MyCoupleTextWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isCouple = ref.watch(myCoupleProvider);
    return Text(
      isCouple ? "Even" : "Odd",
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}
