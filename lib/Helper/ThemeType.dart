import 'package:flutter/material.dart';
import 'package:theme_boilerplate_code/Helper/ThemeConstants.dart';

enum ThemeType { Light, Dark }

class ThemeModel extends ChangeNotifier {
  ThemeData currentTheme = darkTheme;
  ThemeType _themeType = ThemeType.Dark;
  String currentThemeString = "Dark";
  getTheme()
  {
    return currentThemeString;
  }
  toggleTheme() {
    if (_themeType == ThemeType.Dark) {
      currentTheme = lightTheme;
      _themeType = ThemeType.Light;
      currentThemeString = "Light";
      return notifyListeners();
    }

    if (_themeType == ThemeType.Light) {
      currentTheme = darkTheme;
      _themeType = ThemeType.Dark;
      currentThemeString = "Dark";
      return notifyListeners();
    }
  }

  setTheme(String selectedTheme) {
    if (selectedTheme == null || selectedTheme == '') {
      currentTheme = lightTheme;
      _themeType = ThemeType.Light;
      return notifyListeners();
    } else {
      switch (selectedTheme) {
        case "Light":
          {
            currentTheme = lightTheme;
            _themeType = ThemeType.Light;
            currentThemeString = "Light";
            return notifyListeners();

          }
          break;

        case "Dark":
          {
            currentTheme = darkTheme;
            _themeType = ThemeType.Dark;
            currentThemeString = "Dark";
            return notifyListeners();
          }
          break;

        case "LightOswald":
          {
            currentTheme = lightThemeOswald;
            _themeType = ThemeType.Light;
            currentThemeString = "LightOswald";
            return notifyListeners();
          }
          break;

        case "DarkOswald":
          {
            currentTheme = darkThemeOswald;
            _themeType = ThemeType.Dark;
            currentThemeString = "DarkOswald";
            return notifyListeners();
          }
          break;

        case "LightTeko":
          {
            currentTheme = lightThemeTeko;
            _themeType = ThemeType.Light;
            currentThemeString = "LightTeko";
            return notifyListeners();
          }
          break;

        case "DarkTeko":
          {
            currentTheme = darkThemeTeko;
            _themeType = ThemeType.Dark;
            currentThemeString = "DarkTeko";
            return notifyListeners();
          }
          break;
        default:
          {
            currentTheme = lightThemeTeko;
            _themeType = ThemeType.Light;
            currentThemeString = "LightTeko";
            return notifyListeners();
          }
          break;
      }
    }
  }
}
