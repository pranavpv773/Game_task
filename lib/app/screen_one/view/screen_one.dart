import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/routes.dart';
import 'package:flutter_application_1/app/screen_one/view/widgets/textform_field.dart';
import 'package:flutter_application_1/app/screen_two/view/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextformsField(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              primary: Colors.grey,
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            onPressed: () {
              Routes.nextScreen(screen: const ScreenTwo());
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }
}
