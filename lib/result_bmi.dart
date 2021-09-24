import 'package:flutter/material.dart';

import 'constants.dart';
import 'input_page.dart';
import 'reusable_card.dart';

enum ResultStatus { Normal, Overweight, Underweight }

class ResultBmi extends StatelessWidget {
  final String resultStatus;
  final String bmiResult;
  final String interpretation;
  final Color resultColor;

  ResultBmi(
      {required this.resultStatus,
      required this.bmiResult,
      required this.interpretation,
      required this.resultColor});

  // Set color depends on interpretation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULT'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // First Child ( YOUR RESULT )
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                  child: Text(
                    'Your Result',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ReusableCard(
                    onPress: () {},
                    cardColor: kResultCardColor,
                    cardChild: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30.0, horizontal: 0.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            resultStatus,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: resultColor,
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            bmiResult,
                            style: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            'Normal BMI Range :',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF7A7C87),
                            ),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            '18.5 - 25 kg/m2',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 20.0),
                            child: Text(
                              interpretation,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 60.0,
                          ),
                          GestureDetector(
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 60.0),
                                color: Color(0xFF181A2E),
                                child: Text(
                                  'SAVE RESULT',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFEB1555),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (builder) {
              return InputPage();
            }));
          },
          child: Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Text(
                'RE-CALCULATE YOUR BMI',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
