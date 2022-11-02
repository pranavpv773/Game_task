// ignore_for_file: body_might_complete_normally_nullable
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screen_one/view_model/one_notifier.dart';
import 'package:provider/provider.dart';

class TextformsField extends StatelessWidget {
  const TextformsField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        right: 20,
        left: 20,
      ),
      child: Form(
        key: context.read<OneNotifier>().formKey,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            prefixIcon: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Icon(
                Icons.numbers,
                color: Colors.amber,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                10,
              ),
              borderSide: const BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                10,
              ),
              borderSide: const BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                10,
              ),
              borderSide: const BorderSide(
                width: 2.0,
              ),
            ),
            hintText: "Enter A number",
            hintStyle: const TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
