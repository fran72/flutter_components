import 'package:flutter/material.dart';
import 'package:flutter_app_cap6/router/app_routes.dart';
import 'package:flutter_app_cap6/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Home screen!'),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: ListView.separated(
            itemCount: menuOptions.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(
                menuOptions[index].icon,
                color: AppTheme.primary,
              ),
              title: Text(menuOptions[index].name),
              trailing: const Icon(
                Icons.arrow_forward,
                size: 35.0,
                color: AppTheme.primary,
              ),
              onTap: () =>
                  Navigator.pushNamed(context, menuOptions[index].route),
            ),
            separatorBuilder: (_, __) => const Divider(),
          ),
        ));
  }
}
