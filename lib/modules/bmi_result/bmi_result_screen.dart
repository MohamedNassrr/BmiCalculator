import 'dart:ui';

import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final int result;
  final int age;
  final bool isMale;

  BMIResultScreen({
    required this.age,
    required this.isMale,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        title: Text(
          'Bmi Result',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'female'}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age : $age',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Fat percentage : $result',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'What is bmi?',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '- below 18.5 – you are in the underweight range.',
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '- between 18.5 and 24.9 – you are in the healthy weight range. ',
                    ),
                     SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '- between 25 and 29.9 – you are in the overweight range.',
                    ),
                     SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '- between 30 and 39.9 – you are in the obese range.',
                    ),
 
                  
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
