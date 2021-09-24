import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'calculate_brain.dart';
import 'card_child_content.dart';
import 'constants.dart';
import 'enum_gender.dart';
import 'result_bmi.dart';
import 'reusable_card.dart';
import 'round_icon_button.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Value for Slider
  int height = 175;
  int weight = 70;
  int age = 22;

  Color maleCardColor = kActiveCardColor;
  Color femaleCardColor = kDisableCardColor;
  Color maleCardColorBackground = kCardColor;
  Color femaleCardColorBackground = kInactiveCardColor;

  // Method to change color depends on User Click
  // 1 = Male, 2 = Female
  void updateColor(Gender gender) {
    if (gender == Gender.Male) {
      maleCardColor = kActiveCardColor;
      maleCardColorBackground = kCardColor;
      femaleCardColor = kDisableCardColor;
      femaleCardColorBackground = kInactiveCardColor;
    } else if (gender == Gender.Female) {
      femaleCardColor = kActiveCardColor;
      femaleCardColorBackground = kCardColor;
      maleCardColor = kDisableCardColor;
      maleCardColorBackground = kInactiveCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        updateColor(Gender.Male);
                      });
                    },
                    cardColor: maleCardColorBackground,
                    cardChild: CardChildContent(
                        contentColor: maleCardColor,
                        contentText: 'MALE',
                        icon: FontAwesomeIcons.mars),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        updateColor(Gender.Female);
                      });
                    },
                    cardColor: femaleCardColorBackground,
                    cardChild: CardChildContent(
                        contentColor: femaleCardColor,
                        contentText: 'FEMALE',
                        icon: FontAwesomeIcons.venus),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    cardColor: Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: TextStyle(
                              fontSize: 18.0, color: kActiveCardColor),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Text(
                                height.toString(),
                                style: TextStyle(
                                    fontSize: 50.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                  fontSize: 14.0, color: kActiveCardColor),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Color(0xFFFFFFFF),
                              thumbColor: Color(0xFFEB1555),
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30.0),
                              overlayColor: Color(0x29EB1555)),
                          child: Slider(
                            min: 120,
                            max: 220,
                            value: height.toDouble(),
                            inactiveColor: Color(0xFF888993),
                            onChanged: (double value) {
                              setState(() {
                                height = value.toInt();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    cardColor: Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                              fontSize: 18.0, color: kActiveCardColor),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Text(
                                weight.toString(),
                                style: TextStyle(
                                    fontSize: 50.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                            Text(
                              'kg',
                              style: TextStyle(
                                  fontSize: 14.0, color: kActiveCardColor),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(width: 20.0),
                            RoundIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    cardColor: Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                              fontSize: 18.0, color: kActiveCardColor),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Text(
                                age.toString(),
                                style: TextStyle(
                                    fontSize: 50.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(width: 20.0),
                            RoundIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFEB1555),
        child: GestureDetector(
          onTap: () {
            // First we need to calculte BMI result
            CalculatorBrain calculatorBrain =
                new CalculatorBrain(height: height, weight: weight);

            String bmiResult = calculatorBrain.calculateBMI();
            String resultStatus = calculatorBrain.getResult();
            String interpretation = calculatorBrain.getInterpretation();
            Color resultColor = calculatorBrain.getResultColor();

            // Navigate to result Screen => with pushing results
            Navigator.push(context, MaterialPageRoute(builder: (builder) {
              return ResultBmi(
                resultStatus: resultStatus,
                bmiResult: bmiResult,
                interpretation: interpretation,
                resultColor: resultColor,
              );
            }));
          },
          child: Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Text(
                'CALCULATE YOUR BMI',
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
