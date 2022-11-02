import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screen_one/view/widgets/textform_field.dart';
import 'package:flutter_application_1/app/screen_one/view_model/one_notifier.dart';
import 'package:provider/provider.dart';

import 'widgets/button_widget.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextformsField(),
          ButtonWidget(
            fn: () => context.read<OneNotifier>().nextScreen(context),
            name: "Submit",
          ),
        ],
      ),
    );
  }
}
