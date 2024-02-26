import 'package:flutter/material.dart';

import '../app_colors.dart';

class OnboardingTextStyle {
  static const TextStyle introduction = TextStyle(
    fontFamily: 'SF Pro Text',
    fontSize: 24.0,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
  static TextStyle description = TextStyle(
    fontFamily: 'SF Pro Text',
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const TextStyle screenTitle = TextStyle(
    fontFamily: 'SF Pro Text',
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
    height: 24.0 / 20.0,
  );
  static const TextStyle button = TextStyle(
    fontFamily: 'SF Pro Text',
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    height: 20.0 / 18.0,
  );
}
