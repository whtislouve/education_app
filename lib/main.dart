import 'package:flutter/material.dart';
import 'package:travel_app/app/routes/app_router.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    isToolbarVisible: true,
    builder: (context) => MyApp(), // Wrap your app
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: const Color.fromRGBO(78, 116, 250, 1),
          onPrimary: const Color.fromRGBO(255, 255, 255, 1),
          secondary: const Color.fromRGBO(255, 255, 255, 1),
          onSecondary: const Color.fromRGBO(0, 0, 0, 1),
          error: const Color.fromRGBO(255, 255, 255, 1),
          onError: const Color.fromRGBO(255, 1, 1, 1),
          surface: const Color.fromRGBO(255, 255, 255, 1),
          onSurface: const Color.fromRGBO(0, 0, 0, 1),
        ),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 30,
            height: 1,
          ),
        ),
        useMaterial3: true,
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
