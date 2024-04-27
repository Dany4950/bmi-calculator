import 'package:bmicalculator/pages/homepage.dart';
import 'package:bmicalculator/pages/test_calci.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 167, 166, 166),
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 20,
          shadowColor: Colors.grey,
          title: Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: HomePage(),
      ),
    );
  }
}
