import 'package:flutter/material.dart';
import 'package:expandable_widgets/expandable_widgets.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: examplePage(),
    );
  }
}

class examplePage extends StatefulWidget {
  const examplePage({Key? key}) : super(key: key);

  @override
  _examplePageState createState() => _examplePageState();
}

class _examplePageState extends State<examplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blue.shade500,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Example Page",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: "Times New Roman",
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                elevation: 8,
                color: Colors.blue.shade200,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 36.0, left: 6.0, right: 6.0, bottom: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Expandable.extended(
                          elevation: 10,
                          isClickable: false,
                          initiallyExpanded: false,
                          centralizePrimaryWidget: true,
                          centralizeAdditionalWidget: true,
                          primaryWidget: Container(
                            height: 80,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                child: Center(
                                    child: Text(
                                  'Example for Number of\ntablets',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                )),
                              ),
                            ),
                          ),
                          secondaryWidget: Container(
                            height: 180,
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'It is calculate the number of tablets or pills needed to be administered for prescribed dose .',
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                      "Example used for calculation of dosage of drugs in tablet form : \n Desired dosage(x) = Ordered dosage/Hand dosage")
                                ],
                              ),
                            ),
                          ),
                          arrowWidget: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.blueGrey,
                            size: 30.0,
                          ),
                          hoverOn: true,
                          additionalWidget: Text('Show Example'),
                          arrowLocation: ArrowLocation.left,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Expandable.extended(
                          elevation: 10,
                          isClickable: false,
                          initiallyExpanded: false,
                          centralizePrimaryWidget: true,
                          centralizeAdditionalWidget: true,
                          primaryWidget: Container(
                            height: 80,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                child: Center(
                                    child: Text(
                                  'Example for Volume of \nliquid',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                )),
                              ),
                            ),
                          ),
                          secondaryWidget: Container(
                            height: 180,
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'It  is calculate the amount of liquid needed to be administered based on liquid stock ( ampoule / vial ) available.',
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                      "Example used for calculation of dosage of drugs in tablet form : \n Desired dosage(x) = Ordered dosage/Hand dosage")
                                ],
                              ),
                            ),
                          ),
                          arrowWidget: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.blueGrey,
                            size: 30.0,
                          ),
                          hoverOn: true,
                          additionalWidget: Text('Show Example'),
                          arrowLocation: ArrowLocation.left,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Expandable.extended(
                          elevation: 10,
                          isClickable: false,
                          initiallyExpanded: false,
                          centralizePrimaryWidget: true,
                          centralizeAdditionalWidget: true,
                          primaryWidget: Container(
                            height: 80,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                child: Center(
                                    child: Text(
                                  'Example for I.V \nvolume rate ( ml / hr.)',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                )),
                              ),
                            ),
                          ),
                          secondaryWidget: Container(
                            height: 180,
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'It  is calculate I.V volume rate for prescribed fluid infusion over time . ',
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                      "Example used for calculation of dosage of drugs in tablet form : \n Desired dosage(x) = Ordered dosage/Hand dosage")
                                ],
                              ),
                            ),
                          ),
                          arrowWidget: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.blueGrey,
                            size: 30.0,
                          ),
                          hoverOn: true,
                          additionalWidget: Text('Show Example'),
                          arrowLocation: ArrowLocation.left,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Expandable.extended(
                          elevation: 10,
                          isClickable: false,
                          initiallyExpanded: false,
                          centralizePrimaryWidget: true,
                          centralizeAdditionalWidget: true,
                          primaryWidget: Container(
                            height: 80,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                child: Center(
                                    child: Text(
                                  'Example for I.V drop \nrate / min',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                )),
                              ),
                            ),
                          ),
                          secondaryWidget: Container(
                            height: 180,
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'It  is calculate the infusion rate ( drops per minute ), according to the volume to be infused over time . ',
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                      "Example used for calculation of dosage of drugs in tablet form : \n Desired dosage(x) = Ordered dosage/Hand dosage")
                                ],
                              ),
                            ),
                          ),
                          arrowWidget: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.blueGrey,
                            size: 30.0,
                          ),
                          hoverOn: true,
                          additionalWidget: Text('Show Example'),
                          arrowLocation: ArrowLocation.left,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Expandable.extended(
                          elevation: 10,
                          isClickable: false,
                          initiallyExpanded: false,
                          centralizePrimaryWidget: true,
                          centralizeAdditionalWidget: true,
                          primaryWidget: Container(
                            height: 80,
                            child: SingleChildScrollView(
                              child: Container(
                                child: Center(
                                    child: Text(
                                  'Example for Unit and \nEquivalence',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                )),
                              ),
                            ),
                          ),
                          secondaryWidget: Container(
                            height: 180,
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'It is calculate the number of tablets or pills needed to be administered for prescribed dose .',
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                      "Example used for calculation of dosage of drugs in tablet form : \n Desired dosage(x) = Ordered dosage/Hand dosage")
                                ],
                              ),
                            ),
                          ),
                          arrowWidget: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.blueGrey,
                            size: 30.0,
                          ),
                          hoverOn: true,
                          additionalWidget: Text('Show Example'),
                          arrowLocation: ArrowLocation.left,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
