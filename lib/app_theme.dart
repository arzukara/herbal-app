import 'package:flutter/material.dart';

final ThemeData lightAppTheme = ThemeData(
  useMaterial3: false,
  primarySwatch: const MaterialColor(4280890182, {
    50: Color(0xffeff1f6),
    100: Color(0xffdfe3ec),
    200: Color(0xffbfc8d9),
    300: Color(0xff9facc6),
    400: Color(0xff7e91b4),
    500: Color(0xff5e75a1),
    600: Color(0xff4b5e81),
    700: Color(0xff394660),
    800: Color(0xff262f40),
    900: Color(0xff131720)
  }),
  brightness: Brightness.light,
  primaryColor: const Color(0xff293346),
  primaryColorLight: const Color(0xffdfe3ec),
  primaryColorDark: const Color(0xff394660),
  canvasColor: const Color(0xfffafafa),
  scaffoldBackgroundColor: const Color(0xfffafafa),
  appBarTheme: const AppBarTheme(
    color: Color(0xff293346),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 20.0,
      fontStyle: FontStyle.normal,
    ),
    centerTitle: true,
  ),
  bottomAppBarTheme: const BottomAppBarTheme(
    color: Color(0xffffffff),
  ),
  cardColor: const Color(0xffffffff),
  dividerColor: const Color(0x1f000000),
  highlightColor: const Color(0x66bcbcbc),
  splashColor: const Color(0x66c8c8c8),
  unselectedWidgetColor: const Color(0x8a000000),
  disabledColor: const Color(0x61000000),
  secondaryHeaderColor: const Color(0xffeff1f6),
  textSelectionTheme: const TextSelectionThemeData(
    selectionColor: Color(0xffbfc8d9),
    cursorColor: Color(0xff4285f4),
    selectionHandleColor: Color(0xff9facc6),
  ),
  dialogBackgroundColor: const Color(0xffffffff),
  indicatorColor: const Color(0xff5e75a1),
  hintColor: const Color(0x8a000000),
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    minWidth: 88,
    height: 36,
    padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    alignedDropdown: false,
    buttonColor: Color(0xffe0e0e0),
    disabledColor: Color(0x61000000),
    highlightColor: Color(0x29000000),
    splashColor: Color(0x1f000000),
    focusColor: Color(0x1f000000),
    hoverColor: Color(0x0a000000),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff264e36),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff94bda5),
      onPrimaryContainer: Color(0xff0d100e),
      secondary: Color(0xff797b3a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffbfc0a0),
      onSecondaryContainer: Color(0xff10100e),
      tertiary: Color(0xff555729),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff9ea089),
      onTertiaryContainer: Color(0xff0d0e0c),
      error: Color(0xff790000),
      onError: Color(0xffffffff),
      errorContainer: Color(0xfff1d8d8),
      onErrorContainer: Color(0xff141212),
      background: Color(0xfff7f8f7),
      onBackground: Color(0xff090909),
      surface: Color(0xfff7f8f7),
      onSurface: Color(0xff090909),
      surfaceVariant: Color(0xffeff2f0),
      onSurfaceVariant: Color(0xff121212),
      outline: Color(0xff565656),
      shadow: Color(0xff000000),
      inverseSurface: Color(0xff111312),
      onInverseSurface: Color(0xfff5f5f5),
      inversePrimary: Color(0xffabc8b7),
      surfaceTint: Color(0xff264e36),
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Color(0x8a000000),
      fontSize: 32.0,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
    displayMedium: TextStyle(
      color: Color(0x8a000000),
      fontSize: 28.0,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
    displaySmall: TextStyle(
      color: Color(0x8a000000),
      fontSize: 28.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headlineLarge: TextStyle(
      color: Color(0x8a000000),
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
    headlineMedium: TextStyle(
      color: Color(0x8a000000),
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
    headlineSmall: TextStyle(
      color: Color(0xdd000000),
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleLarge: TextStyle(
      color: Color(0xff293346),
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
    titleMedium: TextStyle(
      color: Color(0xff293346),
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
    titleSmall: TextStyle(
      color: Color(0xff293346),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyLarge: TextStyle(
      color: Color(0xdd000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyMedium: TextStyle(
      color: Color(0xdd000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    bodySmall: TextStyle(
      color: Color(0x8a000000),
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    labelLarge: TextStyle(
      color: Color(0xdd000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
    labelMedium: TextStyle(
      color: Color(0xff000000),
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    labelSmall: TextStyle(
      color: Color(0xff000000),
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  primaryTextTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    displayMedium: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    displaySmall: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headlineMedium: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headlineSmall: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleLarge: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleMedium: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyLarge: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyMedium: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodySmall: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    labelLarge: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleSmall: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    labelSmall: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    helperStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    hintStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorStyle: TextStyle(
      color: Color(0xffd32f2f),
      fontSize: 0,
      decorationThickness: 0,
      height: 0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorMaxLines: null,
    isDense: false,
    contentPadding: EdgeInsets.only(top: 12, bottom: 12, left: 0, right: 0),
    isCollapsed: false,
    prefixStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    suffixStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    counterStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    filled: false,
    fillColor: Color(0x00000000),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffd32f2f), width: 0.25),
      borderRadius: BorderRadius.all(
        Radius.circular(4.0),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff5389F4),
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(4.0),
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffd32f2f),
        width: 0.25,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(4.0),
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0x61000000), width: 0.25),
      borderRadius: BorderRadius.all(
        Radius.circular(4.0),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xff000000), width: 0.25),
      borderRadius: BorderRadius.all(
        Radius.circular(4.0),
      ),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xff000000), width: 0.25),
      borderRadius: BorderRadius.all(
        Radius.circular(4.0),
      ),
    ),
  ),
  iconTheme: const IconThemeData(
    color: Color(0xFF78A2F4),
    opacity: 1,
    size: 24,
  ),
  primaryIconTheme: const IconThemeData(
    color: Color(0xffffffff),
    opacity: 1,
    size: 24,
  ),
  listTileTheme: const ListTileThemeData(
    iconColor: Color(0xFF78A2F4),
  ),
  sliderTheme: const SliderThemeData(
    activeTrackColor: null,
    inactiveTrackColor: null,
    disabledActiveTrackColor: null,
    disabledInactiveTrackColor: null,
    activeTickMarkColor: null,
    inactiveTickMarkColor: null,
    disabledActiveTickMarkColor: null,
    disabledInactiveTickMarkColor: null,
    thumbColor: null,
    disabledThumbColor: null,
    thumbShape: null,
    overlayColor: null,
    valueIndicatorColor: null,
    valueIndicatorShape: null,
    showValueIndicator: null,
    valueIndicatorTextStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: Color(0xFFFFFFFF),
    labelStyle: TextStyle(
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w600,
    ),
    unselectedLabelColor: Color(0xBBFFFFFF),
  ),
  chipTheme: const ChipThemeData(
    backgroundColor: Color(0x1f000000),
    brightness: Brightness.light,
    deleteIconColor: Color(0xde000000),
    disabledColor: Color(0x0c000000),
    labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
    labelStyle: TextStyle(
      color: Color(0xde000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
    secondaryLabelStyle: TextStyle(
      color: Color(0x3d000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    secondarySelectedColor: Color(0x3d4cb6dd),
    selectedColor: Color(0x3d000000),
    shape: StadiumBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      ),
    ),
  ),
  dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
    side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    ),
    borderRadius: BorderRadius.all(Radius.circular(0.0)),
  )),
);
