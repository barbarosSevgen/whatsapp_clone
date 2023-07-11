import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/routes/routes.dart';
import 'package:whatsapp_clone/theme/theme.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().themeData(),
      debugShowCheckedModeBanner: true,
      title: 'Whatsapp Clone',
      routes: Approutes.appRoutes,
      initialRoute: Approutes.homeVeiw,
    );
  }
}
