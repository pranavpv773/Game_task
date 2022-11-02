import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/app_styles/app_color.dart';
import 'package:flutter_application_1/app/app_styles/app_images.dart';
import 'package:flutter_application_1/app/routes/routes.dart';
import 'package:flutter_application_1/app/screen_one/view/screen_one.dart';
import 'package:flutter_application_1/app/screen_one/view/widgets/button_widget.dart';
import 'package:flutter_application_1/app/screen_one/view_model/one_notifier.dart';
import 'package:flutter_application_1/app/screen_two/view_model/second_notifier.dart';
import 'package:provider/provider.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    Key? key,
    required this.width,
    required this.heights,
  }) : super(key: key);

  final double width;
  final double heights;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heights,
      color: AppColor.bGcolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.success,
          ),
          ButtonWidget(
            fn: () {
              context.read<OneNotifier>().textContrlr.clear();
              context.read<SecondNotifier>().map.clear();
              Routes.removeScreenUntil(screen: const ScreenOne());
            },
            name: "Back to Home",
          ),
        ],
      ),
    );
  }
}
