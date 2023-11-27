import 'package:flutter/material.dart';
import 'package:flutter_app_cap6/router/app_routes.dart';
import 'package:flutter_app_cap6/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      // theme: ThemeData.light().copyWith(
      //   appBarTheme: const AppBarTheme(color: Colors.yellow),
      // ),
      theme: AppTheme.theme,
    );
  }
}
