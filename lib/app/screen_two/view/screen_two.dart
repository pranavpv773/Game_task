import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screen_one/view_model/one_notifier.dart';
import 'package:flutter_application_1/app/screen_two/view_model/second_notifier.dart';
import 'package:provider/provider.dart';
import 'widgets/builder.dart';
import 'widgets/success.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: context.watch<SecondNotifier>().map.length ==
                int.parse(context.read<OneNotifier>().textContrlr.text)
            ? SuccessScreen(width: width, heights: heights)
            : ButtonBuilderScreen(heights: heights),
      ),
    );
  }
}
