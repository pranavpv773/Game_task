import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screen_two/view_model/second_notifier.dart';
import 'package:provider/provider.dart';

class LoopBuilder extends StatelessWidget {
  const LoopBuilder({Key? key, required this.count}) : super(key: key);
  final int count;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        for (int i = 0; i < count; i++)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: BorderSide(
                  width: 5.0,
                  color: context.watch<SecondNotifier>().map.containsValue(i)
                      ? Colors.green
                      : Colors.blue,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 10,
                ),
                primary: context.watch<SecondNotifier>().map.containsValue(i)
                    ? Colors.white
                    : Colors.grey,
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              onPressed: () {
                context.read<SecondNotifier>().changeColor(i);
              },
              child: Text(
                "${i + 1}",
                style: const TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
      ],
    ));
  }
}
