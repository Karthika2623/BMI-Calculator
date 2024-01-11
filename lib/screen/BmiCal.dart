import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/ReuseCard.dart';
import '../components/IconContent.dart';
import '../constant.dart';
import 'result.dart';
import '../components/bottombtn.dart';
import '../components/roundIconbtn.dart';
import 'package:bmicalculator12/calc.dart';


enum Gender{
  male,
  female,
}
class BmiCal extends StatefulWidget {
  // const BmiCal({super.key});

  @override
  State<BmiCal> createState() => _BmiCalState();
}

class _BmiCalState extends State<BmiCal> {

  Gender ? selectedGender;
  int height=180;
  int weight=60;
  int age=20;
  
  // Color maleCardClr=inactiveCardClr;
  // Color femaleCardClr=inactiveCardClr;
  //
  // void updateColour(Gender SelectedGender){
  //   //male card pressed
  //   if(SelectedGender==Gender.male){
  //     if (maleCardClr==inactiveCardClr){
  //      maleCardClr=activeCardClr;
  //      femaleCardClr=inactiveCardClr;
  //     }
  //     else{
  //       maleCardClr=inactiveCardClr;
  //     }
  //   }
  //   //female card pressed
  //   if(SelectedGender==Gender.female){
  //     if (femaleCardClr==inactiveCardClr){
  //       femaleCardClr=activeCardClr;
  //       maleCardClr=inactiveCardClr;
  //
  //     }
  //     else{
  //       femaleCardClr=inactiveCardClr;
  //     }
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child:Row(
             children: <Widget>[
              Expanded(
                child: ReuseCard(
                  onPress: (){
                    setState(() {
                      selectedGender=Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? kActiveCardClr
                      : kInactiveCardClr,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReuseCard(
                  onPress: (){
                    setState(() {
                      selectedGender=Gender.female;
                    });
                  },
                    colour:selectedGender==Gender.female ? kActiveCardClr:kInactiveCardClr,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ],
          ),
          ),
          Expanded(
            child: ReuseCard(
              onPress: (){

              },
              colour:kActiveCardClr,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 Text('HEIGHT',style: kLabelTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTxtStyle,
                      ),
                      Text(
                          'cm',
                          style: kLabelTextStyle),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Color(0XFF00838F),
                      inactiveTrackColor: Colors.white,
                      thumbColor: Color(0XFF00E5FF),
                       overlayColor:  Color(0X29EF90B1FF),
                       thumbShape:  RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                     value:height.toDouble(),
                      min: 100.0,
                      max: 250.0,
                      onChanged: (double newValue) {
                       setState(() {
                         height=newValue.round();
                       });
                       print(newValue);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child:Row(
            children: <Widget>[
              Expanded(
                child: ReuseCard(
                  onPress: (){

                  },
                    colour:kActiveCardClr,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                     Text('WEIGHT',
                       style: kLabelTextStyle
                     ),
                      Text(weight.toString(),
                        style: kNumberTxtStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconBtn(
                            icon: FontAwesomeIcons.plus,
                            onPressing: (){
                              setState(() {
                                weight++;
                              });
                            },

                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          RoundIconBtn(
                            icon: FontAwesomeIcons.minus,
                            onPressing: (){
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReuseCard(
                  onPress: (){

                  },
                    colour: kActiveCardClr,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('AGE',
                        style: kLabelTextStyle,
                      ),
                      Text(age.toString(),
                      style: kNumberTxtStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconBtn(
                            icon: FontAwesomeIcons.plus,
                            onPressing: (){
                              setState(() {
                                age++;
                              });
                            },

                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          RoundIconBtn(
                            icon: FontAwesomeIcons.minus,
                            onPressing: (){
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
          BottomBtn(btnTitle: 'CALCULATE',
          onTap:  (){
            Calculator cal=Calculator(height: height, weight: weight);

            Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(
              bmiResult: cal.calculateBmi(),
              resultTxt: cal.getResult(),
              inpretation: cal.getInterpretation(),
            ),
            ),
            );
            },
          ),
        ],
      ),
    );
  }
}






