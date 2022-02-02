import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_strategy/url_strategy.dart';

import 'application.dart';

void main() {
  setPathUrlStrategy();
  Intl.defaultLocale = 'pt_BR';
  runApp(const Application());
}

//flutter pub run build_runner build --delete-conflicting-outputs