// ignore_for_file: use_build_context_synchronously, invalid_use_of_protected_member

import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/app/routes/routes.dart';
import 'package:flutter_application_1/app/screen_two/view/screen_two.dart';
import 'package:flutter_application_1/app/screen_two/view_model/second_notifier.dart';
import 'package:provider/provider.dart';

class OneNotifier with ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final textContrlr = TextEditingController();

  nextScreen(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      int val = int.parse(textContrlr.text);
      final newVal = val / 2;
      await Routes.nextScreen(screen: const ScreenTwo());
      context.read<SecondNotifier>().changeColor(newVal.round());
    }
  }
}
