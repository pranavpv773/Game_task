import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/app_styles/app_color.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.fn,
    required this.name,
  }) : super(key: key);
  final VoidCallback fn;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        primary: AppColor.kGrey,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        ),
      ),
      onPressed: fn,
      child: Text(name),
    );
  }
}
