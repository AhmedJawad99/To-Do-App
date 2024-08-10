import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/ui/pages/notification_screen.dart';
import 'package:todo/ui/theme.dart';

import 'ui/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeMode.dark,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const NotificationScreen(
        payload: 'lolololo|nununun|erere|',
      ),
    );
  }
}
