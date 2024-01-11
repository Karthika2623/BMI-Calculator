import 'package:flutter/material.dart';
import 'package:bmicalculator12/constant.dart';
import 'package:bmicalculator12/components/ReuseCard.dart';
import 'package:bmicalculator12/components/bottombtn.dart';
import 'package:bmicalculator12/calc.dart';

class ResultPage extends StatelessWidget {
  // const ResultPage({super.key});
  ResultPage({required this.bmiResult,required this.resultTxt,required this.inpretation});

  final  String bmiResult;
  final String resultTxt;
  final String inpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: const Text('Your Result',style: kTitleTxt,),
            ),
          ),
          Expanded(
              flex:5,
              child:ReuseCard(
                onPress: () {  },
                colour: kActiveCardClr,
                cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        resultTxt.toUpperCase(), style: kResult
                    ),
                    Text(
                     bmiResult,style: kBmiTextStyle
                    ),
                    Text(
                     inpretation,
                        style: kBodyText,
                        textAlign: TextAlign.center
                    ),
                  ],
                ),
              ),
          ),
          BottomBtn(
            btnTitle:'RE - CALCULATE',
              onTap: (){
              Navigator.pop(context);
              },
          ),
        ],
      ),
    );
  }
}
