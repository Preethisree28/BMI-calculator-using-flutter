import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_button.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResults,@required this.interpretation,@required this.resultText});
  final String bmiResults;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget>[
          Expanded(
            child: Center(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Your Result',
                  style: kTitleTextStyle,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex:5,
            child:ReusableCard(
                colour:kActiveCardColour,
                    cardChild:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:<Widget> [
                        Text(
                          resultText.toUpperCase(),
                        style:kResultTextStyle,
                        ),
                        Text(bmiResults,
                        style:kBMITextStyle,
                        ),
                        Text(interpretation,
                        style:kBodyTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
            ),
          ),
          BottomButton(onTap:() {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return (InputPage());
                },
              ),
            );
          },
              buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
