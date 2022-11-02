import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/app_styles/app_color.dart';
import 'package:flutter_application_1/app/app_styles/app_images.dart';
import 'package:flutter_application_1/app/routes/routes.dart';
import 'package:flutter_application_1/app/screen_one/view/screen_one.dart';
import 'package:flutter_application_1/app/screen_one/view/widgets/button_widget.dart';
import 'package:flutter_application_1/app/screen_one/view_model/one_notifier.dart';
import 'package:flutter_application_1/app/screen_two/view_model/second_notifier.dart';
import 'package:provider/provider.dart';

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
            ? Container(
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
                      fn: () =>
                          Routes.removeScreenUntil(screen: const ScreenOne()),
                      name: "Back to Home",
                    ),
                  ],
                ),
              )
            : GridView.builder(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisExtent: heights / 5,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount:
                    int.parse(context.read<OneNotifier>().textContrlr.text),
                itemBuilder: (BuildContext ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          width: 5.0,
                          color: context
                                      .watch<SecondNotifier>()
                                      .map
                                      .containsValue(index) ||
                                  index == 5
                              ? Colors.green
                              : Colors.blue,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 10,
                        ),
                        primary: context
                                    .watch<SecondNotifier>()
                                    .map
                                    .containsValue(index) ||
                                index == 5
                            ? Colors.white
                            : Colors.grey,
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      onPressed: () {
                        context.read<SecondNotifier>().changeColor(index);
                      },
                      child: Text(
                        "${index + 1}",
                        style: const TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
