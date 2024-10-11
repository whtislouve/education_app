import 'package:flutter/material.dart';
import 'package:education_app/app/routes/app_router.dart';
import 'package:device_preview/device_preview.dart';
import 'package:education_app/app/themes/app_theme.dart';
import 'package:education_app/shared/ui/screen_size_provider/screen_size_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(DevicePreview(
    enabled: true,
    isToolbarVisible: true,
    builder: (context) => ScreenSizeProvider(
      child: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Educational App',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: AppTheme.lightTheme(context),
      routerConfig: _appRouter.config(),
    );
  }
}
