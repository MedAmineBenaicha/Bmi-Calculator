import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    print('bmi result is : ');
    print(_bmi);
    if (_bmi > 18.5 && _bmi <= 25) {
      return 'Normal';
    } else if (_bmi < 18.5) {
      return 'Underweight';
    } else {
      return 'Overweight';
    }
  }

  Color getResultColor() {
    if (_bmi > 18.5 && _bmi <= 25) {
      return Colors.green;
    } else if (_bmi < 18.5) {
      return Colors.amber;
    } else {
      return Colors.red;
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
