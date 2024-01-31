import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:swd/core/app/app.locator.dart';
import 'package:swd/core/app/app.router.dart';
import 'package:swd/core/custom_url.dart';
import 'package:swd/core/services/database_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CustomUrl.environment = Flavor.stage;

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.white,
      systemStatusBarContrastEnforced: true,
    ),
  );
  await setupLocator();
  await locator<DatabaseService>().initializeDb();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SWD',
      debugShowCheckedModeBanner: false,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      locale: const Locale('en'),
    );
  }
}
