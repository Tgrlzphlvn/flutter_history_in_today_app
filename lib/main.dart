import 'package:flutter/material.dart';
import 'package:flutter_history_in_today_v7/core/theme/light_theme.dart';
import 'package:flutter_history_in_today_v7/feature/view/main_page_view.dart';
import 'package:flutter_history_in_today_v7/product/constants/strings.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main() async {
  WidgetsFlutterBinding().initInstances();
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: LightTheme().theme,
      debugShowCheckedModeBanner: false,
      title: ProjectStrings.mainViewTitle.toString(),
      home: const Scaffold(
        body: MainPageView(),
      ),
    );
  }
}
