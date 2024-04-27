import 'package:bmicalculator/glass.dart';
import 'package:bmicalculator/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class testcalci extends StatefulWidget {
  const testcalci({super.key});

  @override
  State<testcalci> createState() => _testcalciState();
}

var resultt = "";
var number1 = TextEditingController();
var number2 = TextEditingController();

class _testcalciState extends State<testcalci> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 10,
        shadowColor: Colors.grey[400],
        shape: LinearBorder(),
        title: Text(
          "Calculator",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              decorationColor: Colors.amber,
              color: Colors.white),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(40),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                height: 150,
                width: 240,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  controller: number1,
                  decoration: InputDecoration(
                    label: Text(
                      "Enter Number  ",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    prefixIcon: Icon(
                      Icons.format_list_numbered_rounded,
                      color: Colors.white,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
            Container(
              width: 240,
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: number2,
                decoration: InputDecoration(
                  label: Text("Enter Number ",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  prefixIcon: Icon(Icons.format_list_numbered_rounded,
                      color: Colors.white),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              resultt,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 50,
            ),
//
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    alignment: Alignment.center,
                  ),
                  onPressed: () {
                    // Your logic
                    var num1 = number1.text.toString();
                    var num2 = number2.text.toString();
                    if (num1 != "" && num2 != "") {
                      setState(() {
                        var int_num1 = double.parse(num1);
                        var int_num2 = double.parse(num2);

                        var fin = int_num1 + int_num2;

                        resultt = " the Sum is $fin";
                      });
                    } else {
                      setState(() {
                        resultt = " enter valid numbers ";
                      });
                    }
                  },
                  child: Text(
                    "+",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    alignment: Alignment.center,
                  ),
                  onPressed: () {
                    // Your logic
                    var num1 = number1.text.toString();
                    var num2 = number2.text.toString();
                    if (num1 != "" && num2 != "") {
                      setState(() {
                        var int_num1 = double.parse(num1);
                        var int_num2 = double.parse(num2);

                        var fin = int_num1 - int_num2;

                        resultt = " the Difference is $fin";
                      });
                    } else {
                      setState(() {
                        resultt = " enter valid numbers ";
                      });
                    }
                  },
                  child: Text(
                    "-",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    alignment: Alignment.center,
                  ),
                  onPressed: () {
                    // Your logic
                    var num1 = number1.text.toString();
                    var num2 = number2.text.toString();
                    if (num1 != "" && num2 != "") {
                      setState(() {
                        var int_num1 = double.parse(num1);
                        var int_num2 = double.parse(num2);

                        var fin = int_num1 * int_num2;

                        resultt = " the Product is $fin";
                      });
                    } else {
                      setState(() {
                        resultt = " enter valid numbers ";
                      });
                    }
                  },
                  child: Text("*",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    alignment: Alignment.center,
                  ),
                  onPressed: () {
                    // Your logic
                    var num1 = number1.text.toString();
                    var num2 = number2.text.toString();
                    if (num1 != "" && num2 != "") {
                      setState(() {
                        var int_num1 = double.parse(num1);
                        var int_num2 = double.parse(num2);

                        var fin = int_num1 / int_num2;

                        resultt = " the Quotient  is $fin";
                      });
                    } else {
                      setState(() {
                        resultt = " enter valid numbers ";
                      });
                    }
                  },
                  child: Text(
                    "÷",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
