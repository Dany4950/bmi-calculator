//  Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                     decoration: BoxDecoration(
//                         color: Colors.grey[300],
//                         borderRadius: BorderRadius.circular(30)),
//                     height: 90,
//                     width: 40,
//                     child: Center(
//                       child: ElevatedButton(
//                           style: ButtonStyle(
//                             backgroundColor:
//                                 MaterialStateProperty.all(Colors.grey[300]),
//                           ),
//                           onPressed: () {
//                             var num1 = number1.text.toString();
//                             var num2 = number2.text.toString();
//                             if (num1 != "" && num2 != "") {
//                               setState(() {
//                                 var int_num1 = double.parse(num1);
//                                 var int_num2 = double.parse(num2);

//                                 var fin = int_num1 + int_num2;

//                                 resultt = " the solution is $fin";
//                               });
//                             } else {
//                               setState(() {
//                                 resultt = " enter valid numbers ";
//                               });
//                             }
//                           },
//                           child: Text("+")),
//                     )),
//                 Container(
//                     height: 50,
//                     width: 50,
//                     color: Colors.blueAccent,
//                     child: ElevatedButton(
//                         onPressed: () {
//                           var num1 = number1.text.toString();
//                           var num2 = number2.text.toString();
//                           if (num1 != "" && num2 != "") {
//                             setState(() {
//                               var int_num1 = double.parse(num1);
//                               var int_num2 = double.parse(num2);

//                               var fin = int_num1 - int_num2;

//                               resultt = " the solution is $fin";
//                             });
//                           } else {
//                             setState(() {
//                               resultt = " enter valid numbers ";
//                             });
//                           }
//                         },
//                         child: Center(child: Text("-")))),
//                 Container(
//                     height: 80,
//                     width: 60,
//                     color: Colors.amber,
//                     child: Center(
//                       child: ElevatedButton(
//                           style: ButtonStyle(
//                               backgroundColor:
//                                   MaterialStateProperty.all(Colors.amber)),
//                           onPressed: () {
//                             var num1 = number1.text.toString();
//                             var num2 = number2.text.toString();
//                             if (num1 != "" && num2 != "") {
//                               setState(() {
//                                 var int_num1 = double.parse(num1);
//                                 var int_num2 = double.parse(num2);

//                                 var fin = int_num1 * int_num2;

//                                 resultt = " the solution is $fin";
//                               });
//                             } else {
//                               setState(() {
//                                 resultt = " enter valid numbers ";
//                               });
//                             }
//                           },
//                           child: Text(
//                             "*",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 23),
//                           )),
//                     )),
//                 Center(
//                   child: Container(
//                       height: 60,
//                       width: 60,
//                       child: ElevatedButton(
//                           style: ButtonStyle(
//                               backgroundColor:
//                                   MaterialStateProperty.all(Colors.amber)),
//                           onPressed: () {
//                             var num1 = number1.text.toString();
//                             var num2 = number2.text.toString();
//                             if (num1 != "" && num2 != "") {
//                               setState(() {
//                                 var int_num1 = double.parse(num1);
//                                 var int_num2 = double.parse(num2);

//                                 var fin = int_num1 / int_num2;

//                                 resultt = " the solution is $fin";
//                               });
//                             } else {
//                               setState(() {
//                                 resultt = " enter valid numbers ";
//                               });
//                             }
//                           },
//                           child: Center(
//                               child: Text(
//                             "÷",
//                             style: TextStyle(
//                                 fontSize: 23, fontWeight: FontWeight.bold),
//                           )))),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
