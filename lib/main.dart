import 'package:drugdosagecalculator/example_page/example_page.dart';
import 'package:drugdosagecalculator/formula_page/formula_page.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          child: Container(
            color: Colors.blue,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                InkWell(
                  onTap: () {
                    print("Formula");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FormulaPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.book,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Formula Page",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    print("Example Page");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ExamplePage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.bookmark_add_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Examples Page",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    print("Help & Support");
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.contact_support,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Help & Support",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    print("About App");
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.info,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "About App",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Exit",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxHeight > 750 && constraints.maxWidth < 1000) {
            return Container(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.blue.shade800,
                  Colors.blue.shade800,
                ], begin: Alignment.topCenter)),
                child: Center(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: Icon(
                            Icons.menu,
                            size: 30,
                          ),
                          onPressed: () =>
                              scaffoldKey.currentState!.openDrawer(),
                        ),
                      ),
                      Text(
                        "Drug Dosage \n Calculator",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 120,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RaisedButton(
                            splashColor: Colors.blue.shade400,
                            color: Colors.white,
                            elevation: 15,
                            onPressed: () {},
                            child: Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "Number of  Tablets",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Times New Roman",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          RaisedButton(
                            splashColor: Colors.blue.shade400,
                            color: Colors.white,
                            elevation: 15,
                            onPressed: () {},
                            child: Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "Volume of Liquid",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Times New Roman",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RaisedButton(
                            splashColor: Colors.blue.shade400,
                            color: Colors.white,
                            elevation: 15,
                            onPressed: () {},
                            child: Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "I.V volume rate\n ( ml / hr.)",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Times New Roman",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          RaisedButton(
                            splashColor: Colors.blue.shade400,
                            color: Colors.white,
                            elevation: 15,
                            onPressed: () {},
                            child: Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "I.V drop rate / min",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Times New Roman",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: RaisedButton(
                          splashColor: Colors.blue.shade400,
                          color: Colors.white,
                          elevation: 15,
                          onPressed: () {},
                          child: Container(
                            width: 200,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "Unit Conversion",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Times New Roman",
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          } else if (constraints.maxHeight > 1000 &&
              constraints.maxWidth > 1000) {
            return Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.blue.shade800,
                  Colors.blue.shade800,
                ], begin: Alignment.topCenter)),
                child: Center(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: Icon(
                            Icons.menu,
                            size: 30,
                          ),
                          onPressed: () =>
                              scaffoldKey.currentState!.openDrawer(),
                        ),
                      ),
                      Text(
                        "Drug Dosage Calculator",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 120,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RaisedButton(
                            splashColor: Colors.blue.shade400,
                            color: Colors.white,
                            elevation: 15,
                            onPressed: () {},
                            child: Container(
                              width: 210,
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "Number of  Tablets",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Times New Roman",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          RaisedButton(
                            splashColor: Colors.blue.shade400,
                            color: Colors.white,
                            elevation: 15,
                            onPressed: () {},
                            child: Container(
                              width: 210,
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "Volume of Liquid",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Times New Roman",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RaisedButton(
                            splashColor: Colors.blue.shade400,
                            color: Colors.white,
                            elevation: 15,
                            onPressed: () {},
                            child: Container(
                              width: 210,
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "I.V volume rate\n ( ml / hr.)",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Times New Roman",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          RaisedButton(
                            splashColor: Colors.blue.shade400,
                            color: Colors.white,
                            elevation: 15,
                            onPressed: () {},
                            child: Container(
                              width: 210,
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "I.V drop rate / min",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Times New Roman",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: RaisedButton(
                          splashColor: Colors.blue.shade400,
                          color: Colors.white,
                          elevation: 15,
                          onPressed: () {},
                          child: Container(
                            width: 300,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "Unit Conversion",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Times New Roman",
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ));
          } else {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.blue.shade800,
                  Colors.blue.shade800,
                ], begin: Alignment.topCenter)),
                child: Center(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: Icon(
                            Icons.menu,
                            size: 30,
                          ),
                          onPressed: () =>
                              scaffoldKey.currentState!.openDrawer(),
                        ),
                      ),
                      Text(
                        "Drug Dosage \n Calculator",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 120,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RaisedButton(
                            splashColor: Colors.blue.shade400,
                            color: Colors.white,
                            elevation: 15,
                            onPressed: () {},
                            child: Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "Number of  Tablets",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Times New Roman",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          RaisedButton(
                            splashColor: Colors.blue.shade400,
                            color: Colors.white,
                            elevation: 15,
                            onPressed: () {},
                            child: Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "Volume of Liquid",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Times New Roman",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RaisedButton(
                            splashColor: Colors.blue.shade400,
                            color: Colors.white,
                            elevation: 15,
                            onPressed: () {},
                            child: Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "I.V volume rate\n ( ml / hr.)",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Times New Roman",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          RaisedButton(
                            splashColor: Colors.blue.shade400,
                            color: Colors.white,
                            elevation: 15,
                            onPressed: () {},
                            child: Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "I.V drop rate / min",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Times New Roman",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: RaisedButton(
                          splashColor: Colors.blue.shade400,
                          color: Colors.white,
                          elevation: 15,
                          onPressed: () {},
                          child: Container(
                            width: 200,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "Unit Conversion",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Times New Roman",
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        })));
  }
}
