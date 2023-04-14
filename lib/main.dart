// import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsiv_ui/loginpage.dart';
import 'package:responsiv_ui/responsiv_ui.dart';
import 'package:flutter/services.dart';

void main() {
  // Lock Portrait Down & Lock Landscap Down.

  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(DevicePreview(
      // enabled: !kReleaseMode,
      builder: (context) {
    return MyApp();
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsiv Ui Demo',
      home: const HomePage(),
    );
  }
}
