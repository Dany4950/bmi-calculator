import 'package:bmicalculator/pages/test_calci.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var wtController = TextEditingController();
var ftController = TextEditingController();
// var inchController = TextEditingController();
var msg = " ";
var result = "";
var bg_color = Colors.black;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  borderRadius: BorderRadius.circular(40)),
              height: 100,
              width: 300,
              child: Center(
                  child: Text(
                "Body Mass Index",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 250,
            child: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                controller: wtController,
                decoration: InputDecoration(
                    label: Text("Enter your weight (kgs) ",
                        style: TextStyle(fontSize: 17, color: Colors.white)),
                    prefixIcon: Icon(Icons.accessibility_new_rounded,
                        color: Colors.white)),
                keyboardType: TextInputType.number),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 250,
            child: TextField(
                controller: ftController,
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                decoration: InputDecoration(
                    label: Text(
                      "Enter your height (feet) ",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    prefixIcon: Icon(
                      Icons.accessibility_new_rounded,
                      color: Colors.white,
                    )),
                keyboardType: TextInputType.number),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              height: 80,
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    var wt = wtController.text.toString();
                    var ft = ftController.text.toString();
                    // var inch = inchController.text.toString();

                    if (wt != "" && ft != "") {
                      var int_wt = double.parse(wt);
                      var int_ht = double.parse(ft);

                      var ht_meter = int_ht * 0.308;
                      var final_ht = ht_meter * ht_meter;

                      var bmi = int_wt / final_ht;

                      if (bmi > 25) {
                        msg = " you are overweight (hit the gym )";
                        bg_color = Colors.redAccent;
                      } else if (bmi < 18) {
                        msg =
                            " You are under weight dude \n   (eat some protein ) ";
                        bg_color = Colors.orange;
                      } else {
                        msg = " you are a fit person dude ";
                        bg_color = Color.fromARGB(255, 124, 213, 127);
                      }
                      setState(() {
                        result =
                            "  Your BMI is ${bmi.toStringAsFixed(3)} \n $msg ";
                      });
                    } else {
                      setState(() {
                        result = " Fill all the details ";
                      });
                    }
                  },
                  child: Text(
                    "Calculate ",
                    style: TextStyle(fontSize: 20),
                  ))),
          SizedBox(
            height: 30,
          ),
          Text(
            result,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          // Text(
          //   msg,
          //   style: TextStyle(color: Colors.white),
          // )
          SizedBox(
            height: 90,
          ),

          // Text(
          //   "Click below for arithmetic calculator ",
          //   style: TextStyle(color: Colors.yellowAccent),
          // ),

          SizedBox(
            height: 10,
          ),

          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => testcalci()));
              },
              icon: Icon(
                Icons.calculate,
                size: 50,
              )),
        ],
      ),
    );
  }
}
