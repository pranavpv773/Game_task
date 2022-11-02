// ignore_for_file: body_might_complete_normally_nullable
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/app_styles/app_color.dart';
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
          controller: context.read<OneNotifier>().textContrlr,
          keyboardType: TextInputType.number,
          validator: (value) {
            if (value!.isEmpty) {
              return " Please fill this field";
            }
          },
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Icon(
                Icons.numbers,
                color: AppColor.bGcolor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                10,
              ),
              borderSide: BorderSide(
                color: AppColor.kBlack,
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                10,
              ),
              borderSide: BorderSide(
                color: AppColor.kBlack,
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
            hintStyle: TextStyle(
              fontSize: 15,
              color: AppColor.kBlack,
            ),
          ),
        ),
      ),
    );
  }
}
