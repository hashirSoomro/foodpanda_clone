import 'package:flutter/material.dart';

const MaterialColor myColour = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFFFE6F0),
  100: Color(0xFFFFBFDA),
  200: Color(0xFFFF95C2),
  300: Color(0xFFFF6BAA),
  400: Color(0xFFFF4B97),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFFFF267D),
  700: Color(0xFFFF2072),
  800: Color(0xFFFF1A68),
  900: Color(0xFFFF1055),
});
const int _primaryPrimaryValue = 0xFFFF2B85;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFFFFC5D4),
  700: Color(0xFFFFACC0),
});
const int _primaryAccentValue = 0xFFFFF8FA;
