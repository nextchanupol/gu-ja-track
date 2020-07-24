import 'package:flutter/material.dart';
import 'package:learning_platform_app/utils/size_config.dart';


class AppTheme {
  AppTheme._();

  static const Color mainColor = Color(0xFF2470C7);
  static const Color appBackgroundColor = Color(0xFFFFFFFF);
  static const Color primaryButtonColor = Color(0xFF2470C7);
  static const Color topBarBackgroundColor = Color(0xFFFF4500);
  static const Color selectedTabBackgroundColor = Color(0xFFFFC442);
  static const Color unSelectedTabBackgroundColor = Color(0xFFFFFFFC);
  static const Color subTitleTextColor = Color(0xFF9F988F);

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppTheme.appBackgroundColor,
    brightness: Brightness.light,
    textTheme: lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    textTheme: darkTextTheme,
  );

  static final TextTheme lightTextTheme = TextTheme(
    headline6: _titleLight,
    subtitle2: _subTitleLight,
    button: _buttonLight,
    headline4: _greetingLight,
    headline3: _searchLight,
    bodyText1: _unSelectedTabLight,
    bodyText2: _selectedTabLight,
  );

  static final TextTheme darkTextTheme = TextTheme(
    headline6: _titleDark,
    subtitle2: _subTitleDark,
    button: _buttonDark,
    headline4: _greetingDark,
    headline3: _searchDark,
    bodyText1: _unSelectedTabDark,
    bodyText2: _selectedTabDark,
  );

  static final TextStyle _titleLight = TextStyle(
    color: Colors.black,
    fontSize: 3.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle _subTitleLight = TextStyle(
    color: subTitleTextColor,
    fontSize: 2 * SizeConfig.textMultiplier,
    height: 1.5,
  );

  static final TextStyle _buttonLight = TextStyle(
    color: Colors.black,
    fontSize: 2.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle _greetingLight = TextStyle(
    color: Colors.black,
    fontSize: 2.0 * SizeConfig.textMultiplier,
  );

  static final TextStyle _searchLight = TextStyle(
    color: Colors.black,
    fontSize: 2.3 * SizeConfig.textMultiplier,
  );

  static final TextStyle _selectedTabLight = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 2 * SizeConfig.textMultiplier,
  );

  static final TextStyle _unSelectedTabLight = TextStyle(
    color: Colors.grey,
    fontSize: 2 * SizeConfig.textMultiplier,
  );


  // todo: dark
  static final TextStyle _titleDark = TextStyle(
    color: Colors.white,
    fontSize: 3.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle _subTitleDark = TextStyle(
    color: Colors.white70,
    fontSize: 2 * SizeConfig.textMultiplier,
    height: 1.5,
  );

  static final TextStyle _buttonDark = TextStyle(
    color: Colors.black,
    fontSize: 2.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle _greetingDark = TextStyle(
    color: Colors.black,
    fontSize: 2.0 * SizeConfig.textMultiplier,
  );

  static final TextStyle _searchDark = TextStyle(
    color: Colors.black,
    fontSize: 2.3 * SizeConfig.textMultiplier,
  );

  static final TextStyle _selectedTabDark = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 2 * SizeConfig.textMultiplier,
  );

  static final TextStyle _unSelectedTabDark = TextStyle(
    color: Colors.white70,
    fontSize: 2 * SizeConfig.textMultiplier,
  );

//  static final TextStyle _titleDark = _titleLight.copyWith(color: Colors.white);
//
//  static final TextStyle _subTitleDark = _subTitleLight.copyWith(color: Colors.white70);
//
//  static final TextStyle _buttonDark = _buttonLight.copyWith(color: Colors.black);
//
//  static final TextStyle _greetingDark = _greetingLight.copyWith(color: Colors.black);
//
//  static final TextStyle _searchDark = _searchDark.copyWith(color: Colors.black);
//
//  static final TextStyle _selectedTabDark = _selectedTabDark.copyWith(color: Colors.white);
//
//  static final TextStyle _unSelectedTabDark = _selectedTabDark.copyWith(color: Colors.white70);
}