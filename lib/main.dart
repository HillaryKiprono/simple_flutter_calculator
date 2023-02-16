import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String equation = "0";
  String result = "0";
  String expression = "";
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;
  buttonPressed(String buttonText){
    setState(() {
      if(buttonText == "C"){
        equation = "0";
        result = "0";
        equationFontSize = 38.0;
        resultFontSize = 48.0;
      }
      else if(buttonText == "⌫"){
        equationFontSize = 48.0;
        resultFontSize = 38.0;
         equation = equation.substring(0, equation.length - 1);
        if(equation == ""){
          equation = "0";}
         }

      else if(buttonText=="="){
        equationFontSize=48.0;
        resultFontSize = 38.0;
        resultFontSize = 48.0;

        expression = equation;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('÷', '/');

        try{
          Parser p = Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        }catch(e){
          result = "Error";
        }

      }


      else
      {
        if(equation=="0"){
          equation=buttonText;
        }
        else{
          equation=equation+buttonText;
        }


      }
    }

    );
  }

  Widget buildButton(String buttonText, double buttonHeight, Color buttonColor){
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: TextButton(
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0),
                                        side: const BorderSide(
                                            color: Colors.white,
                                            width: 1,
                                            style: BorderStyle.solid
                                        )
                                    )
                                ),
                                onPressed: () {
                                  buttonPressed(buttonText);
                                },
                                child:  Text(
                                    buttonText,
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white
                                  ),
                                ),

                              ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Calculator')),
      body: Column(
        children: <Widget>[


          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
           child: Text(equation, style: TextStyle(fontSize: equationFontSize),),
          ),


          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Text(result, style: TextStyle(fontSize: resultFontSize),),
          ),


          Expanded(
            child: Divider(),
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * .75,
                child: Table(
                  children: [
                    TableRow(
                        children: [
                          buildButton("C", 1, Colors.redAccent),
                          buildButton("⌫", 1, Colors.blue),
                          buildButton("÷", 1, Colors.blue),
                        ]
                    ),

                    TableRow(
                        children: [
                          buildButton("7", 1, Colors.black54),
                          buildButton("8", 1, Colors.black54),
                          buildButton("9", 1, Colors.black54),
                        ]
                    ),

                    TableRow(
                        children: [
                          buildButton("4", 1, Colors.black54),
                          buildButton("5", 1, Colors.black54),
                          buildButton("6", 1, Colors.black54),
                        ]
                    ),

                    TableRow(
                        children: [
                          buildButton("1", 1, Colors.black54),
                          buildButton("2", 1, Colors.black54),
                          buildButton("3", 1, Colors.black54),
                        ]
                    ),

                    TableRow(
                        children: [
                          buildButton(".", 1, Colors.black54),
                          buildButton("0", 1, Colors.black54),
                          buildButton("00", 1, Colors.black54),
                        ]
                    ),
                  ],
                ),
              ),


              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Table(
                  children: [
                    TableRow(
                        children: [
                          buildButton("×", 1, Colors.blue),
                        ]
                    ),

                    TableRow(
                        children: [
                          buildButton("-", 1, Colors.blue),
                        ]
                    ),

                    TableRow(
                        children: [
                          buildButton("+", 1, Colors.blue),
                        ]
                    ),

                    TableRow(
                        children: [
                          buildButton("=", 2, Colors.redAccent),
                        ]
                    ),
                  ],
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}


//   Scaffold(
    //   appBar: AppBar(
    //     title: Text("Calculator"),
    //     centerTitle: true,
    //   ),
    //   body: Column(
    //     children: [
    //       Container(
    //         alignment: Alignment.centerRight,
    //         padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
    //         child: Text("0",style: TextStyle(fontSize: 40),),
    //       ),
    //
    //       Container(
    //         alignment: Alignment.centerRight,
    //         padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
    //         child: Text("0",style: TextStyle(fontSize: 50),),
    //       ),
    //       const Expanded(
    //           child: Divider()
    //       ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Container(
    //             width: MediaQuery.of(context).size.width,
    //             child: Table(
    //               children: [
    //                 TableRow(
    //                     children: [
    //                       Container(
    //                         height: MediaQuery.of(context).size.height*0.1,
    //                         color: Colors.deepOrange,
    //                         child: TextButton(
    //                           style: TextButton.styleFrom(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(0),
    //                                   side: const BorderSide(
    //                                       color: Colors.white,
    //                                       width: 1,
    //                                       style: BorderStyle.solid
    //                                   )
    //                               )
    //                           ),
    //                           onPressed: () {  },
    //                           child: const Text(
    //                             "C",
    //                             style: TextStyle(
    //                                 fontSize: 30,
    //                                 fontWeight: FontWeight.normal,
    //                                 color: Colors.white
    //                             ),
    //                           ),
    //
    //                         ),
    //                       ),
    //
    //                       Container(
    //                         height: MediaQuery.of(context).size.height*0.1,
    //                         color: Colors.blue,
    //                         child: TextButton(
    //                           style: TextButton.styleFrom(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(0),
    //                                   side: const BorderSide(
    //                                       color: Colors.white,
    //                                       width: 1,
    //                                       style: BorderStyle.solid
    //                                   )
    //                               )
    //                           ),
    //                           onPressed: () {  },
    //                           child: const Text(
    //                             "⌫",
    //                             style: TextStyle(
    //                                 fontSize: 30,
    //                                 fontWeight: FontWeight.normal,
    //                                 color: Colors.white
    //                             ),
    //                           ),
    //
    //                         ),
    //                       ),
    //
    //                       Container(
    //                         height: MediaQuery.of(context).size.height*0.1,
    //                         color: Colors.blue,
    //                         child: TextButton(
    //                           style: TextButton.styleFrom(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(0),
    //                                   side: const BorderSide(
    //                                       color: Colors.white,
    //                                       width: 1,
    //                                       style: BorderStyle.solid
    //                                   )
    //                               )
    //                           ),
    //                           onPressed: () {  },
    //                           child: const Text(
    //                             "+",
    //                             style: TextStyle(
    //                                 fontSize: 30,
    //                                 fontWeight: FontWeight.normal,
    //                                 color: Colors.white
    //                             ),
    //                           ),
    //
    //                         ),
    //                       ),
    //
    //                       Container(
    //                         height: MediaQuery.of(context).size.height*0.1,
    //                         color: Colors.blue,
    //                         child: TextButton(
    //                           style: TextButton.styleFrom(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(0),
    //                                   side: const BorderSide(
    //                                       color: Colors.white,
    //                                       width: 1,
    //                                       style: BorderStyle.solid
    //                                   )
    //                               )
    //                           ),
    //                           onPressed: () {  },
    //                           child: const Text(
    //                             "×",
    //                             style: TextStyle(
    //                                 fontSize: 30,
    //                                 fontWeight: FontWeight.normal,
    //                                 color: Colors.white
    //                             ),
    //                           ),
    //
    //                         ),
    //                       )
    //                     ]
    //                 )
    //               ],
    //             ),
    //           )
    //         ],
    //       ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Container(
    //             width: MediaQuery.of(context).size.width,
    //             child: Table(
    //               children: [
    //                 TableRow(
    //                   children: [
    //                     Container(
    //                       height: MediaQuery.of(context).size.height*0.1,
    //                       color: Colors.grey,
    //                       child: TextButton(
    //                         style: TextButton.styleFrom(
    //                           shape: RoundedRectangleBorder(
    //                             borderRadius: BorderRadius.circular(0),
    //                             side: BorderSide(
    //                               color: Colors.white,
    //                               width: 1,
    //                               style: BorderStyle.solid
    //                             )
    //                           )
    //                         ),
    //                         onPressed: () {  },
    //                         child: Text(
    //                           "7",
    //                           style: TextStyle(
    //                             fontSize: 30,
    //                             fontWeight: FontWeight.normal,
    //                             color: Colors.white
    //                           ),
    //                         ),
    //
    //                       ),
    //                     ),
    //
    //                     Container(
    //                       height: MediaQuery.of(context).size.height*0.1,
    //                       color: Colors.grey,
    //                       child: TextButton(
    //                         style: TextButton.styleFrom(
    //                             shape: RoundedRectangleBorder(
    //                                 borderRadius: BorderRadius.circular(0),
    //                                 side: BorderSide(
    //                                     color: Colors.white,
    //                                     width: 1,
    //                                     style: BorderStyle.solid
    //                                 )
    //                             )
    //                         ),
    //                         onPressed: () {  },
    //                         child: Text(
    //                           "8",
    //                           style: TextStyle(
    //                               fontSize: 30,
    //                               fontWeight: FontWeight.normal,
    //                               color: Colors.white
    //                           ),
    //                         ),
    //
    //                       ),
    //                     ),
    //
    //                     Container(
    //                       height: MediaQuery.of(context).size.height*0.1,
    //                       color: Colors.grey,
    //                       child: TextButton(
    //                         style: TextButton.styleFrom(
    //                             shape: RoundedRectangleBorder(
    //                                 borderRadius: BorderRadius.circular(0),
    //                                 side: BorderSide(
    //                                     color: Colors.white,
    //                                     width: 1,
    //                                     style: BorderStyle.solid
    //                                 )
    //                             )
    //                         ),
    //                         onPressed: () {  },
    //                         child: Text(
    //                           "9",
    //                           style: TextStyle(
    //                               fontSize: 30,
    //                               fontWeight: FontWeight.normal,
    //                               color: Colors.white
    //                           ),
    //                         ),
    //
    //                       ),
    //                     ),
    //
    //                     Container(
    //                       height: MediaQuery.of(context).size.height*0.1,
    //                       color: Colors.blue,
    //                       child: TextButton(
    //                         style: TextButton.styleFrom(
    //                             shape: RoundedRectangleBorder(
    //                                 borderRadius: BorderRadius.circular(0),
    //                                 side: BorderSide(
    //                                     color: Colors.white,
    //                                     width: 1,
    //                                     style: BorderStyle.solid
    //                                 )
    //                             )
    //                         ),
    //                         onPressed: () {  },
    //                         child: Text(
    //                           "-",
    //                           style: TextStyle(
    //                               fontSize: 30,
    //                               fontWeight: FontWeight.normal,
    //                               color: Colors.white
    //                           ),
    //                         ),
    //
    //                       ),
    //                     )
    //                   ]
    //                 )
    //               ],
    //             ),
    //           )
    //         ],
    //       ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Container(
    //             width: MediaQuery.of(context).size.width,
    //             child: Table(
    //               children: [
    //                 TableRow(
    //                     children: [
    //                       Container(
    //                         height: MediaQuery.of(context).size.height*0.1,
    //                         color: Colors.grey,
    //                         child: TextButton(
    //                           style: TextButton.styleFrom(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(0),
    //                                   side: BorderSide(
    //                                       color: Colors.white,
    //                                       width: 1,
    //                                       style: BorderStyle.solid
    //                                   )
    //                               )
    //                           ),
    //                           onPressed: () {  },
    //                           child: Text(
    //                             "4",
    //                             style: TextStyle(
    //                                 fontSize: 30,
    //                                 fontWeight: FontWeight.normal,
    //                                 color: Colors.white
    //                             ),
    //                           ),
    //
    //                         ),
    //                       ),
    //
    //                       Container(
    //                         height: MediaQuery.of(context).size.height*0.1,
    //                         color: Colors.grey,
    //                         child: TextButton(
    //                           style: TextButton.styleFrom(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(0),
    //                                   side: BorderSide(
    //                                       color: Colors.white,
    //                                       width: 1,
    //                                       style: BorderStyle.solid
    //                                   )
    //                               )
    //                           ),
    //                           onPressed: () {  },
    //                           child: Text(
    //                             "5",
    //                             style: TextStyle(
    //                                 fontSize: 30,
    //                                 fontWeight: FontWeight.normal,
    //                                 color: Colors.white
    //                             ),
    //                           ),
    //
    //                         ),
    //                       ),
    //
    //                       Container(
    //                         height: MediaQuery.of(context).size.height*0.1,
    //                         color: Colors.grey,
    //                         child: TextButton(
    //                           style: TextButton.styleFrom(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(0),
    //                                   side: BorderSide(
    //                                       color: Colors.white,
    //                                       width: 1,
    //                                       style: BorderStyle.solid
    //                                   )
    //                               )
    //                           ),
    //                           onPressed: () {  },
    //                           child: Text(
    //                             "6",
    //                             style: TextStyle(
    //                                 fontSize: 30,
    //                                 fontWeight: FontWeight.normal,
    //                                 color: Colors.white
    //                             ),
    //                           ),
    //
    //                         ),
    //                       ),
    //
    //                       Container(
    //                         height: MediaQuery.of(context).size.height*0.1,
    //                         color: Colors.blue,
    //                         child: TextButton(
    //                           style: TextButton.styleFrom(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(0),
    //                                   side: BorderSide(
    //                                       color: Colors.white,
    //                                       width: 1,
    //                                       style: BorderStyle.solid
    //                                   )
    //                               )
    //                           ),
    //                           onPressed: () {  },
    //                           child: Text(
    //                             "+",
    //                             style: TextStyle(
    //                                 fontSize: 30,
    //                                 fontWeight: FontWeight.normal,
    //                                 color: Colors.white
    //                             ),
    //                           ),
    //
    //                         ),
    //                       )
    //                     ]
    //                 )
    //               ],
    //             ),
    //           )
    //         ],
    //       ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Container(
    //             width: MediaQuery.of(context).size.width ,
    //             child: Table(
    //               children: [
    //                 TableRow(
    //                     children: [
    //                       Container(
    //                         height: MediaQuery.of(context).size.height*0.1,
    //                         color: Colors.grey,
    //                         child: TextButton(
    //                           style: TextButton.styleFrom(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(0),
    //                                   side: const BorderSide(
    //                                       color: Colors.white,
    //                                       width: 1,
    //                                       style: BorderStyle.solid
    //                                   )
    //                               )
    //                           ),
    //                           onPressed: () {  },
    //                           child: const Text(
    //                             "1",
    //                             style: TextStyle(
    //                                 fontSize: 30,
    //                                 fontWeight: FontWeight.normal,
    //                                 color: Colors.white
    //                             ),
    //                           ),
    //
    //                         ),
    //                       ),
    //
    //                       Container(
    //                         height: MediaQuery.of(context).size.height*0.1,
    //                         color: Colors.grey,
    //                         child: TextButton(
    //                           style: TextButton.styleFrom(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(0),
    //                                   side: const BorderSide(
    //                                       color: Colors.white,
    //                                       width: 1,
    //                                       style: BorderStyle.solid
    //                                   )
    //                               )
    //                           ),
    //                           onPressed: () {  },
    //                           child: const Text(
    //                             "2",
    //                             style: TextStyle(
    //                                 fontSize: 30,
    //                                 fontWeight: FontWeight.normal,
    //                                 color: Colors.white
    //                             ),
    //                           ),
    //
    //                         ),
    //                       ),
    //
    //                       Container(
    //                         height: MediaQuery.of(context).size.height*0.1,
    //                         color: Colors.grey,
    //                         child: TextButton(
    //                           style: TextButton.styleFrom(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(0),
    //                                   side: const BorderSide(
    //                                       color: Colors.white,
    //                                       width: 1,
    //                                       style: BorderStyle.solid
    //                                   )
    //                               )
    //                           ),
    //                           onPressed: () {  },
    //                           child: const Text(
    //                             "3",
    //                             style: TextStyle(
    //                                 fontSize: 30,
    //                                 fontWeight: FontWeight.normal,
    //                                 color: Colors.white
    //                             ),
    //                           ),
    //
    //                         ),
    //                       ),
    //
    //                       Container(
    //                         height: MediaQuery.of(context).size.height*0.1,
    //                         color: Colors.redAccent,
    //                         child: TextButton(
    //                           style: TextButton.styleFrom(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(0),
    //                                   side: const BorderSide(
    //                                       color: Colors.white,
    //                                       width: 1,
    //                                       style: BorderStyle.solid
    //                                   )
    //                               )
    //                           ),
    //                           onPressed: () {  },
    //                           child: const Text(
    //                             "/",
    //                             style: TextStyle(
    //                                 fontSize: 30,
    //                                 fontWeight: FontWeight.normal,
    //                                 color: Colors.white
    //                             ),
    //                           ),
    //
    //                         ),
    //                       )
    //                     ]
    //                 )
    //               ],
    //             ),
    //           )
    //         ],
    //       ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Container(
    //             width: MediaQuery.of(context).size.width,
    //             child: Table(
    //               children: [
    //                 TableRow(
    //                     children: [
    //                       Container(
    //                         height: MediaQuery.of(context).size.height*0.1,
    //                         color: Colors.grey,
    //                         child: TextButton(
    //                           style: TextButton.styleFrom(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(0),
    //                                   side: const BorderSide(
    //                                       color: Colors.white,
    //                                       width: 1,
    //                                       style: BorderStyle.solid
    //                                   )
    //                               )
    //                           ),
    //                           onPressed: () {  },
    //                           child: const Text(
    //                             ".",
    //                             style: TextStyle(
    //                                 fontSize: 30,
    //                                 fontWeight: FontWeight.normal,
    //                                 color: Colors.white
    //                             ),
    //                           ),
    //
    //                         ),
    //                       ),
    //
    //                       Container(
    //                         height: MediaQuery.of(context).size.height*0.1,
    //                         color: Colors.grey,
    //                         child: TextButton(
    //                           style: TextButton.styleFrom(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(0),
    //                                   side: const BorderSide(
    //                                       color: Colors.white,
    //                                       width: 1,
    //                                       style: BorderStyle.solid
    //                                   )
    //                               )
    //                           ),
    //                           onPressed: () {  },
    //                           child: const Text(
    //                             "0",
    //                             style: TextStyle(
    //                                 fontSize: 30,
    //                                 fontWeight: FontWeight.normal,
    //                                 color: Colors.white
    //                             ),
    //                           ),
    //
    //                         ),
    //                       ),
    //
    //                       Container(
    //                         height: MediaQuery.of(context).size.height*0.1,
    //                         color: Colors.grey,
    //                         child: TextButton(
    //                           style: TextButton.styleFrom(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(0),
    //                                   side: const BorderSide(
    //                                       color: Colors.white,
    //                                       width: 1,
    //                                       style: BorderStyle.solid
    //                                   )
    //                               )
    //                           ),
    //                           onPressed: () {  },
    //                           child: const Text(
    //                             "00",
    //                             style: TextStyle(
    //                                 fontSize: 30,
    //                                 fontWeight: FontWeight.normal,
    //                                 color: Colors.white
    //                             ),
    //                           ),
    //
    //                         ),
    //                       ),
    //
    //                       Container(
    //                         height: MediaQuery.of(context).size.height*0.1,
    //                         color: Colors.redAccent,
    //                         child: TextButton(
    //                           style: TextButton.styleFrom(
    //                               shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(0),
    //                                   side: const BorderSide(
    //                                       color: Colors.white,
    //                                       width: 1,
    //                                       style: BorderStyle.solid
    //                                   )
    //                               )
    //                           ),
    //                           onPressed: () {  },
    //                           child: const Text(
    //                             "=",
    //                             style: TextStyle(
    //                                 fontSize: 30,
    //                                 fontWeight: FontWeight.normal,
    //                                 color: Colors.white
    //                             ),
    //                           ),
    //
    //                         ),
    //                       )
    //                     ]
    //                 )
    //               ],
    //             ),
    //           )
    //         ],
    //       ),
    //
    //     ],
    //   ),
    // );
