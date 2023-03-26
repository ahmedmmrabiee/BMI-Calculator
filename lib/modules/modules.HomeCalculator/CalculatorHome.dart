

import 'dart:math';

import 'package:bmi_calculator/modules/module.BMIResult/BMI_Result.dart';
import 'package:flutter/material.dart';

class CalculatorHome extends StatefulWidget {
  //const CalculatorHome({Key? key}) : super(key: key);

  @override
  State<CalculatorHome> createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  bool isMale = true;
  double height = 180.0;
  int age = 20;
  int weight = 70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.blue,
        elevation: 2.5,
        shadowColor: Colors.white10,
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Container(
        //color: Colors.white,
        child: Column(

          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                  image: AssetImage('assets/images/male.jpeg'),
                                height: 90.0,
                                width: 90.0,
                              ),
                              Text(
                                'Male',
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0,),
                            color: isMale ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/fem.png'),
                                height: 90.0,
                                width: 90.0,
                              ),
                              // SizedBox(
                              //   height: 10.0,
                              // ),
                              Text(
                                'Female',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              15.0,
                            ),
                             color: !isMale ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0),
               child: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15.0),
                   color: Colors.grey,
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(
                       'Height',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 27,
                     ),
                     ),
                     SizedBox(
                       height: 1.0,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.baseline,
                       textBaseline: TextBaseline.alphabetic,
                       children: [
                         Text(
                           '${height.round()}',
                           style: TextStyle(
                             fontWeight: FontWeight.w900,
                             fontSize: 40,
                           ),
                         ),
                         Text(
                           'CM',
                           style: TextStyle(
                           fontWeight: FontWeight.bold,
                             fontSize: 22,
                            ),
                            ),
                       ],
                     ),
                     Slider(
                         value: height,
                         min: 80.0,
                         max: 220.0,
                         onChanged: (value){
                           setState(() {
                             height = value;
                           });
                           //print( value.round());
                         }),
                   ],
                 ),
               ),
             ),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                 children: [
                   Expanded(
                     child: Container(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text(
                             'Age',
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 27,
                             ),
                           ),
                           SizedBox(
                             height: 1.0,
                           ),
                           Text(
                             '${age}',
                             style: TextStyle(
                               fontWeight: FontWeight.w900,
                               fontSize: 40,
                             ),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                             FloatingActionButton(
                           onPressed: (){
                             setState(() {
                               age--;
                             });
                           } ,
                               mini: true,
                              child: Icon(
                              Icons.remove,
                                ),
                               heroTag: 'age-',
                             ),
                             FloatingActionButton(
                           onPressed: (){
                             setState(() {
                               age++;
                             });
                           } ,
                               mini: true,
                              child: Icon(
                              Icons.add,
                                ),
                               heroTag: 'age+',
                             ),
                               ],
                               ),
                         ],
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15.0,),
                         color: Colors.grey,
                       ),
                     ),
                   ),
                   SizedBox(width: 20.0,),
                   Expanded(
                     child: Container(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [

                           Text(
                             'weight',
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 27,
                             ),
                           ),
                           SizedBox(
                             height: 1.0,
                           ),
                           Text(
                             '${weight}',
                             style: TextStyle(
                               fontWeight: FontWeight.w900,
                               fontSize: 40,
                             ),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                             FloatingActionButton(
                           onPressed: (){
                             setState(() {
                               weight--;
                             });
                           } ,
                               mini: true,
                              child: Icon(
                              Icons.remove,
                                ),
                               heroTag: 'weight-',
                             ),

                             FloatingActionButton(
                           onPressed: (){
                             setState(() {
                               weight++;
                             });
                           } ,
                               mini: true,
                              child: Icon(
                              Icons.add,
                                ),
                               heroTag: 'weight+',
                             ),
                               ],
                               ),
                         ],
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15.0,),
                         color: Colors.grey,
                       ),
                     ),
                   ),

                 ],
                ),
              ),
            ),
            Container(

              height: 60,
              width: double.infinity,
              color: Colors.blue,
              child: Container(

                child: MaterialButton(
                  onPressed: ()
                {
                  double result = weight / pow(height/100, 2);
                  print(result.round());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BMI_result(
                            resultR: result.round(),
                            ageR: age,
                            genIsMale: isMale,
                          ),
                      ),
                  );
                },
                  child: Text(
                    'Calc',
                     style: TextStyle(
                       color: Colors.white
                     ),
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

