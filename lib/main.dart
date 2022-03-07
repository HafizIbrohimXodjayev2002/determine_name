import 'package:determine_name/screens/home_screen.dart';
import 'package:determine_name/service/chopper_api_service.dart';
import 'package:determine_name/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PostApiService.create(),
      dispose: (_, PostApiService postApiService) => postApiService.client.dispose(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: CustomThemeData.themeData(),
        home: const HomeScreen(),
      ),
    );
  }
}

