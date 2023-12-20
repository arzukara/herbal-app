import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:herbal_app/provider/product.dart';
import 'package:herbal_app/route.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductProvider>(
            create: (_) => ProductProvider())
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Herbal App',
      theme: FlexThemeData.light(
        scheme: FlexScheme.brandBlue,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 9,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendOnColors: false,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        fontFamily: "Taviraj",
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.brandBlue,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 15,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        fontFamily: "Taviraj",
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
