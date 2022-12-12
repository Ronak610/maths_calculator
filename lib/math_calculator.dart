import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Calcultor extends StatefulWidget {
  const Calcultor({super.key});

  @override
  State<Calcultor> createState() => _CalcultorState();
}

class _CalcultorState extends State<Calcultor> {
  List calc = [];
  double answerno = 0;
  bool theme=false;

  var darktheme= ThemeData(
    appBarTheme: AppBarTheme(color: Colors.black54),
    textTheme: TextTheme(bodyText1:TextStyle(color: Colors.redAccent)),
    brightness: Brightness.dark
  );

  var lighttheme = ThemeData(
    appBarTheme: AppBarTheme(color: Colors.black),
    textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black45)),
      brightness: Brightness.light
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme==false?lighttheme:darktheme,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    theme = !theme;
                  });
                },
                  child: Icon(theme==false?Icons.light_mode:Icons.dark_mode_outlined)
              ),
              Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: calc
                          .map(
                            (e) => Container(
                          alignment: Alignment.topRight,
                          child: Text(
                            "$e",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      )
                          .toList(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    alignment: Alignment.topRight,
                    child: Text(
                      "$answerno",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    child: Container(
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.only(left: 50, right: 25),
                      child: Icon(Icons.backspace_outlined),
                    ),
                    onTap: () {
                      setState(() {
                        calc.removeAt(calc.length - 1);
                      });
                    },
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, left: 20),
                    alignment: Alignment.topRight,
                    height: 2,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "AC",
                                style: TextStyle(
                                    letterSpacing: 3,
                                    fontSize: 30),
                              ),
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  border: Border.all()),
                            ),
                            onTap: () {
                              setState(() {
                                calc.clear();
                                answerno = 0;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "%",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                calc.add("%");
                              });
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "/",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                  )),
                            ),
                            onTap: () {
                              setState(() {
                                calc.add("/");
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "7",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all()),
                            ),
                            onTap: () {
                              setState(() {
                                calc.add(7);
                              });
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "8",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all()),
                            ),
                            onTap: () {
                              setState(() {
                                calc.add(8);
                              });
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "9",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all()),
                            ),
                            onTap: () {
                              setState(() {
                                calc.add(9);
                              });
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "*",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all()),
                            ),
                            onTap: () {
                              setState(() {
                                calc.add("*");
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "4",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all()),
                            ),
                            onTap: () {
                              setState(() {
                                calc.add(4);
                              });
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "5",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all()),
                            ),
                            onTap: () {
                              setState(() {
                                calc.add(5);
                              });
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "6",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all()),
                            ),
                            onTap: () {
                              setState(() {
                                calc.add(6);
                              });
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all()),
                            ),
                            onTap: () {
                              setState(() {
                                calc.add("+");
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                calc.add(1);
                              });
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "2",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all()),
                            ),
                            onTap: () {
                              setState(() {
                                calc.add(2);
                              });
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "3",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all()),
                            ),
                            onTap: () {
                              setState(() {
                                calc.add(3);
                              });
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "-",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all()),
                            ),
                            onTap: () {
                              setState(() {
                                calc.add("-");
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "00",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all()),
                            ),
                            onTap: () {
                              setState(() {
                                calc.add("00");
                              });
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all()),
                            ),
                            onTap: () {
                              setState(() {
                                calc.add(0);
                              });
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                ".",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all()),
                            ),
                            onTap: () {
                              setState(() {
                                calc.add(".");
                              });
                            },
                            onTapDown: (details) {},
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "=",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  border: Border.all()),
                            ),
                            onTap: () {
                              setState(() {
                                numsetup();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void numsetup() {
    String temp = "";
    String lasttemp = "";
    int symbolps = 0;

    for (int i = 0; i <= calc.length; i++) {
      if (calc[i] != "+" &&
          calc[i] != "*" &&
          calc[i] != "/" &&
          calc[i] != "%" &&
          calc[i] != "-") {
        temp = "$temp${calc[i]}";
      } else {
        symbolps = i;
        break;
      }
    }

    for (int i = symbolps + 1; i < calc.length; i++) {
      lasttemp = "$lasttemp${calc[i]}";
    }
    for (int i = 0; i <= calc.length; i++) {
      setState(() {
        if (calc[i] == "+") {
          answerno = double.parse(temp) + double.parse(lasttemp);
        }
        if (calc[i] == "*") {
          answerno = double.parse(temp) * double.parse(lasttemp);
        }
        if (calc[i] == "/") {
          answerno = double.parse(temp) / double.parse(lasttemp);
        }
        if (calc[i] == "-") {
          answerno = double.parse(temp) - double.parse(lasttemp);
        }
        if (calc[i] == "%") {
          answerno = double.parse(temp) * double.parse(lasttemp) / 100;
        }
      });
    }
  }
}