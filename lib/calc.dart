import 'dart:math';

class Calculator{
Calculator({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBmi(){
   _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >=25){
      return 'OverWeight';
    }
    else if(_bmi>18.5){
      return 'Medium';
    }
    else{
      return 'UnderWeight';
    }
  }

  String getInterpretation(){
    if(_bmi >=25){
      return 'You have higher normal body weight.Try to excercise more ';
    }
    else if(_bmi>18.5){
      return 'You have higher normal body weight.Good';
    }
    else{
      return 'You have lower then normal body weight.You can Eat More............';
    }
  }
}