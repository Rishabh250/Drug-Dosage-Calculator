import 'package:flutter/material.dart';
import 'package:expandable_widgets/expandable_widgets.dart';

class FormulaPage extends StatelessWidget {
  const FormulaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: formulaPage(),
    );
  }
}

class formulaPage extends StatefulWidget {
  formulaPage({Key? key}) : super(key: key);

  @override
  _formulaPageState createState() => _formulaPageState();
}

class _formulaPageState extends State<formulaPage> {
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
                    "Formula Page",
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
                                  'Formula for Number of\ntablets',
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
                                      "Formula used for calculation of dosage of drugs in tablet form : \n Desired dosage(x) = Ordered dosage/Hand dosage")
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
                          additionalWidget: Text('Show Formula'),
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
                                  'Formula for Volume of \nliquid',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
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
                                      "Formula used for calculation of dosage of drugs in tablet form : \n Desired dosage(x) = Ordered dosage/Hand dosage")
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
                          additionalWidget: Text('Show Formula'),
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
                                  'Formula for I.V \nvolume rate ( ml / hr.)',
                                  textAlign: TextAlign.left,
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
                                      "Formula used for calculation of dosage of drugs in tablet form : \n Desired dosage(x) = Ordered dosage/Hand dosage")
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
                          additionalWidget: Text('Show Formula'),
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
                                  child: Text(
                                'Formula for I.V drop \nrate / min',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              )),
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
                                      "Formula used for calculation of dosage of drugs in tablet form : \n Desired dosage(x) = Ordered dosage/Hand dosage")
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
                          additionalWidget: Text('Show Formula'),
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
                                  'Formula for Unit and \nEquivalence',
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
                                      "Formula used for calculation of dosage of drugs in tablet form : \n Desired dosage(x) = Ordered dosage/Hand dosage")
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
                          additionalWidget: Text('Show Formula'),
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
