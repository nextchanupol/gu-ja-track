import 'package:flutter/material.dart';
import 'package:learning_platform_app/screens/welcome/started_screen.dart';
import 'package:learning_platform_app/utils/styling.dart';
import 'package:learning_platform_app/utils/size_config.dart';





void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Learning Platform Application',
              theme: AppTheme.darkTheme,
              home: StartedScreen(),
            );
          },
        );
      },
    );
  }
}