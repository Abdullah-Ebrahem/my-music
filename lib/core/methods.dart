import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void navigateTo({required Widget page, bool withHistory = false}) {
  Navigator.of(navigatorKey.currentContext!).pushAndRemoveUntil(
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
    ),
    (route) => withHistory,
  );
}
