import 'package:bloc/bloc.dart';
import 'package:bmicalculator/modules/bmi_result/bmi_result_screen.dart';
import 'package:bmicalculator/modules/bmi/bmi_screen.dart';
import 'package:bmicalculator/modules/counter/counter_screen.dart';
import 'package:bmicalculator/modules/home/home_screen.dart';
import 'package:bmicalculator/modules/login/login_screen.dart';
import 'package:bmicalculator/modules/massenger/massenger_screen.dart';
import 'package:bmicalculator/modules/users/user_screen.dart';
import 'package:bmicalculator/shared/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocOverrides.runZoned(
    () {
      runApp(MyApp());
      // Use cubits...
    },
    blocObserver : MyBlocObserver(),
  );
  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }
}
