import 'package:flutter/material.dart';

class BMI_result extends StatelessWidget {

  final int ageR ;
  final int resultR;
  final bool genIsMale;

  BMI_result({
    required this.ageR,
    required this.resultR,
    required this.genIsMale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back ,
          ),

        ),
        centerTitle: false,
        title: Text(
          'BMI Result',
        ),
      ),
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Gender: ${genIsMale ? 'Male' : 'Female'}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
                'Result: $resultR',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
                'Age: $ageR',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
