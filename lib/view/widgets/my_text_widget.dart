import 'package:flutter/material.dart';
import 'package:flutter_0507/provider/constants/all_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable //sen add eledin deyisilmezdi
class MyTextWidget extends ConsumerWidget {
  const MyTextWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      ref.read(myTextProvider),
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}
