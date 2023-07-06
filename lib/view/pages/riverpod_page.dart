import 'package:flutter/material.dart';
import 'package:flutter_0507/provider/constants/all_providers.dart';
import 'package:flutter_0507/view/widgets/my_counter_text_widget.dart';
import 'package:flutter_0507/view/widgets/my_couple_text_widget.dart';
import 'package:flutter_0507/view/widgets/my_floating_action_button.dart';
import 'package:flutter_0507/view/widgets/my_text_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer(
          builder: (context, ref, child) {
            return Text(ref.watch(titleProvider));
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyTextWidget(),
            MyCounterTextWidget(),
            MyCoupleTextWidget(),
          ],
        ),
      ),
      floatingActionButton: MyFloatingActionButtonWidget(),
    );
  }
}
