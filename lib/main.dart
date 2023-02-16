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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text("0",style: TextStyle(fontSize: 40),),
          ),

          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text("0",style: TextStyle(fontSize: 50),),
          ),
          Expanded(
              child: Divider()
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Table(
                  children: [
                    TableRow(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            color: Colors.deepOrange,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(
                                          color: Colors.white,
                                          width: 1,
                                          style: BorderStyle.solid
                                      )
                                  )
                              ),
                              onPressed: () {  },
                              child: Text(
                                "C",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),
                              ),

                            ),
                          ),

                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            color: Colors.blue,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(
                                          color: Colors.white,
                                          width: 1,
                                          style: BorderStyle.solid
                                      )
                                  )
                              ),
                              onPressed: () {  },
                              child: Text(
                                "del",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),
                              ),

                            ),
                          ),

                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            color: Colors.blue,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(
                                          color: Colors.white,
                                          width: 1,
                                          style: BorderStyle.solid
                                      )
                                  )
                              ),
                              onPressed: () {  },
                              child: Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),
                              ),

                            ),
                          ),

                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            color: Colors.blue,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(
                                          color: Colors.white,
                                          width: 1,
                                          style: BorderStyle.solid
                                      )
                                  )
                              ),
                              onPressed: () {  },
                              child: Text(
                                "*",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),
                              ),

                            ),
                          )
                        ]
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*0.1,
                          color: Colors.grey,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                                side: BorderSide(
                                  color: Colors.white,
                                  width: 1,
                                  style: BorderStyle.solid
                                )
                              )
                            ),
                            onPressed: () {  },
                            child: Text(
                              "7",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.normal,
                                color: Colors.white
                              ),
                            ),

                          ),
                        ),

                        Container(
                          height: MediaQuery.of(context).size.height*0.1,
                          color: Colors.grey,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                    side: BorderSide(
                                        color: Colors.white,
                                        width: 1,
                                        style: BorderStyle.solid
                                    )
                                )
                            ),
                            onPressed: () {  },
                            child: Text(
                              "8",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white
                              ),
                            ),

                          ),
                        ),

                        Container(
                          height: MediaQuery.of(context).size.height*0.1,
                          color: Colors.grey,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                    side: BorderSide(
                                        color: Colors.white,
                                        width: 1,
                                        style: BorderStyle.solid
                                    )
                                )
                            ),
                            onPressed: () {  },
                            child: Text(
                              "9",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white
                              ),
                            ),

                          ),
                        ),

                        Container(
                          height: MediaQuery.of(context).size.height*0.1,
                          color: Colors.blue,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                    side: BorderSide(
                                        color: Colors.white,
                                        width: 1,
                                        style: BorderStyle.solid
                                    )
                                )
                            ),
                            onPressed: () {  },
                            child: Text(
                              "-",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white
                              ),
                            ),

                          ),
                        )
                      ]
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Table(
                  children: [
                    TableRow(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            color: Colors.grey,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(
                                          color: Colors.white,
                                          width: 1,
                                          style: BorderStyle.solid
                                      )
                                  )
                              ),
                              onPressed: () {  },
                              child: Text(
                                "4",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),
                              ),

                            ),
                          ),

                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            color: Colors.grey,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(
                                          color: Colors.white,
                                          width: 1,
                                          style: BorderStyle.solid
                                      )
                                  )
                              ),
                              onPressed: () {  },
                              child: Text(
                                "5",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),
                              ),

                            ),
                          ),

                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            color: Colors.grey,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(
                                          color: Colors.white,
                                          width: 1,
                                          style: BorderStyle.solid
                                      )
                                  )
                              ),
                              onPressed: () {  },
                              child: Text(
                                "6",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),
                              ),

                            ),
                          ),

                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            color: Colors.blue,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(
                                          color: Colors.white,
                                          width: 1,
                                          style: BorderStyle.solid
                                      )
                                  )
                              ),
                              onPressed: () {  },
                              child: Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),
                              ),

                            ),
                          )
                        ]
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width ,
                child: Table(
                  children: [
                    TableRow(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            color: Colors.grey,
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
                              onPressed: () {  },
                              child: const Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),
                              ),

                            ),
                          ),

                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            color: Colors.grey,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(
                                          color: Colors.white,
                                          width: 1,
                                          style: BorderStyle.solid
                                      )
                                  )
                              ),
                              onPressed: () {  },
                              child: Text(
                                "2",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),
                              ),

                            ),
                          ),

                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            color: Colors.grey,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(
                                          color: Colors.white,
                                          width: 1,
                                          style: BorderStyle.solid
                                      )
                                  )
                              ),
                              onPressed: () {  },
                              child: Text(
                                "3",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),
                              ),

                            ),
                          ),

                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            color: Colors.redAccent,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(
                                          color: Colors.white,
                                          width: 1,
                                          style: BorderStyle.solid
                                      )
                                  )
                              ),
                              onPressed: () {  },
                              child: Text(
                                "/",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),
                              ),

                            ),
                          )
                        ]
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Table(
                  children: [
                    TableRow(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            color: Colors.grey,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(
                                          color: Colors.white,
                                          width: 1,
                                          style: BorderStyle.solid
                                      )
                                  )
                              ),
                              onPressed: () {  },
                              child: Text(
                                ".",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),
                              ),

                            ),
                          ),

                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            color: Colors.grey,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(
                                          color: Colors.white,
                                          width: 1,
                                          style: BorderStyle.solid
                                      )
                                  )
                              ),
                              onPressed: () {  },
                              child: Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),
                              ),

                            ),
                          ),

                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            color: Colors.grey,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(
                                          color: Colors.white,
                                          width: 1,
                                          style: BorderStyle.solid
                                      )
                                  )
                              ),
                              onPressed: () {  },
                              child: Text(
                                "00",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),
                              ),

                            ),
                          ),

                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            color: Colors.redAccent,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(
                                          color: Colors.white,
                                          width: 1,
                                          style: BorderStyle.solid
                                      )
                                  )
                              ),
                              onPressed: () {  },
                              child: Text(
                                "=",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),
                              ),

                            ),
                          )
                        ]
                    )
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