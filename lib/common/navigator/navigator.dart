import 'package:flutter/material.dart';

void navigatePush({required BuildContext context, required Widget screen}) {
  Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
}

void navigatePushReplacement(
    {required BuildContext context, required Widget screen}) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => screen));
}
