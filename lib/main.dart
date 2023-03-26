import 'package:bmi_calculator/modules/module.BMIResult/BMI_Result.dart';
import 'package:bmi_calculator/modules/modules.HomeCalculator/CalculatorHome.dart';
import 'package:flutter/material.dart';

void main() {
  //runApp(const MyApp());
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      //home: BMI_result(),
      home: CalculatorHome(),
    );

  }
}

