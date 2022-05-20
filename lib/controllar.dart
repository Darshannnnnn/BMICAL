import 'package:flutter/material.dart';

class controllar with ChangeNotifier {
  int gender = 0;
  int fcolor = 0;
  int icon = 0;
  double height = 120;
  int wight = 10;
  int age = 10;
  double? bmi;

  get({int? a}) {
    if (a == 0) {
      gender = 0;
      fcolor = 0;
      icon = 0;
    } else if (a == 1) {
      gender = 1;
      fcolor = 1;
      icon = 1;
    }
    notifyListeners();
  }
  slider(val){
    height=val;
    notifyListeners();
  }
  weightpluse(){
    wight++;
    notifyListeners();
  }
  weightmin(){
    if(wight>10) {
      wight--;
    }
    notifyListeners();
  }
  agepluse(){
    age++;
    notifyListeners();
  }
  agemin(){
    if(age>10) {
      age--;
    }
    notifyListeners();
  }

  bmilogic(){
    bmi = wight / (height/100 * height/100);
    notifyListeners();
  }
  getresult(){
    if(bmi!>=25){
      return 'Overweight' ;
    }
    else if(bmi!>18){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }
  getinspiration(){
    if(bmi!>=25){
      return 'You have a higher than normal body weight. Try to exercise more';
    }
    else if(bmi!>18){
      return 'You have a normal body weight.God job!';
    }
    else{
      return 'You have a lower than normal body weight.You can eat a bit more.';
    }
  }
}
