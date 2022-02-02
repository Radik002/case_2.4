import 'package:flutter/material.dart';

ThemeData globalTheme() => ThemeData(
      fontFamily: 'Georgia',
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
      ).copyWith(
        secondary: Colors.limeAccent,
      ),
      textTheme: const TextTheme(
        headline6: TextStyle(
            fontSize: 30.0, color: Colors.black, fontStyle: FontStyle.normal),
        bodyText2:
            TextStyle(fontSize: 26.0, fontFamily: 'Hind', color: Colors.indigo),
      ),
    );
