import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/routes.dart';
import 'package:flutter_application_1/app/screen_one/view/screen_one.dart';
import 'package:flutter_application_1/app/screen_one/view_model/one_notifier.dart';
import 'package:flutter_application_1/app/screen_two/view_model/second_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (create) => OneNotifier(),
        ),
        ChangeNotifierProvider(
          create: (create) => SecondNotifier(),
        ),
      ],
      child: MaterialApp(
        navigatorKey: Routes.navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ScreenOne(),
      ),
    );
  }
}
