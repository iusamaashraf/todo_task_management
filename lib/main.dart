import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:todo_task_management/views/pages/splash/splash_page.dart';

import 'constants/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return GetMaterialApp(
              theme: ThemeData(
                colorScheme: const ColorScheme.light(),
                fontFamily: 'avenir',
              ),
              //theme: ThemeData(fontFamily: 'Montserrat'),
              debugShowCheckedModeBanner: false,
              //  builder: DevicePreview.appBuilder,
              home: const SplashPage(),
              //home: const SettingsPage(),
            );
          },
        );
      },
    );
  }
}
