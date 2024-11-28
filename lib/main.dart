import 'package:career_guidance_system/ui/get_started.dart';
import 'package:career_guidance_system/ui/input_page.dart';
import 'package:career_guidance_system/ui/jobprofiles/ai_ml_specalist.dart';
import 'package:career_guidance_system/ui/jobprofiles/api_integration_specalist.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:GetStarted(),
    );
  }
}

