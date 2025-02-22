import 'package:flutter/material.dart';

extension AppExtension on double {
  Widget get byHeight => SizedBox(height: this);
  Widget get byWidth => SizedBox(width: this);
  Widget withChild(Widget child) => SizedBox(child: child);
}

extension Navigations on BuildContext {
  pushScreen(Widget newScreen) =>
      Navigator.push(this, MaterialPageRoute(builder: (_) => newScreen));
  popScreen() => Navigator.of(this).pop();
}
