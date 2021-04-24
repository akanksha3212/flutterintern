import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:flutter_intern/questions.dart';
import 'package:flutter_intern/questionlist.dart';
import 'dart:async';
import 'package:flutter_intern/size_config.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'AppEnum.dart';

class View2 extends StatefulWidget {
  @override

  _View2State createState() => _View2State();
}

class _View2State extends State<View2> {
  int number = 0;
  int score = 0;
  List<bool> _correct = [];
  int _currentStep=10;
  AppEnum _character = AppEnum.NON;
  List<Question> _questions = [];
  Question item;
  int index;

 int f=1;
  @override
  void initState() {
    super.initState();
    _questions = genre['questions'];
    _questions.shuffle();

  }

  void dispose(){
    super.dispose();
  }

  void quesno(context, _questions, color) {
    if (number < _questions.length - 1) {
      setState(() {
        number++;
        _currentStep=_currentStep+10;
      });
    }
  }
 _currentStep1(){

}
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:StepProgressIndicator(
          totalSteps: 100,
          currentStep: _currentStep,
          size: 8,
          padding: 0,
          selectedColor: Colors.yellow,
          unselectedColor: Colors.cyan,
          roundedEdges: Radius.circular(10),
          selectedGradientColor: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.yellowAccent, Colors.deepOrange],
          ),
          unselectedGradientColor: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.black, Colors.blue],
          ),
        ),
        centerTitle: true,
        titleSpacing: 1,
        backgroundColor: Colors.red[300],
      ),

      body: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[




            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  color: Color.fromRGBO(0, 0, 0, 0.8),
                  shadowColor: Color.fromRGBO(0, 0, 0, 0.8),
                  elevation: 8,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        _questions[number].que,
                        style: TextStyle(
                            color: Colors.red[300],
                            fontSize: 3.5 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.w800),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 3.1 * SizeConfig.heightMultiplier),

          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[


                RadioListTile<AppEnum>(
                  title: Text(_questions[number].op1),
                  value: AppEnum.optionA,
                  groupValue: _character,
                  onChanged: (AppEnum value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
                RadioListTile<AppEnum>(
                  title: Text(_questions[number].op2),
                  value: AppEnum.optionB,
                  groupValue: _character,
                  onChanged: (AppEnum value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
                RadioListTile<AppEnum>(
                  title: Text(_questions[number].op3),
                  value: AppEnum.optionC,
                  groupValue: _character,
                  onChanged: (AppEnum value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
                RadioListTile<AppEnum>(
                  title: Text(_questions[number].op4),
                  value: AppEnum.optionD,
                  groupValue: _character,
                  onChanged: (AppEnum value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ]),
            FlatButton(

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                onPressed: () {


                 setState(() {
                   _correct.add(false);
                   if (_character == AppEnum.optionA && _questions[number].op1 == _questions[number].answer ||
                       _character == AppEnum.optionB &&  _questions[number].op2 == _questions[number].answer ||
                       _character == AppEnum.optionC &&  _questions[number].op3 == _questions[number].answer ||
                       _character == AppEnum.optionD &&  _questions[number].op4 == _questions[number].answer) {
                   Fluttertoast.showToast(
                       msg: "Correct",
                       toastLength: Toast.LENGTH_SHORT,
                       gravity: ToastGravity.CENTER,
                       timeInSecForIosWeb: 3,
                       backgroundColor: Colors.black,
                       textColor: Colors.white,
                       fontSize: 16.0); }
                   else{
                     Fluttertoast.showToast(
                         msg: "Wrong",

                       toastLength: Toast.LENGTH_SHORT,
                       gravity: ToastGravity.CENTER,
                       timeInSecForIosWeb: 3,
                       backgroundColor: Colors.black,
                       textColor: Colors.white,
                       fontSize: 16.0);
                 }});
                  quesno(context, _questions, Colors.red[300]);
                },

                child: Text(
                  'Submit',
                  style: TextStyle(
                      color: Colors.red[300],
                      fontWeight: FontWeight.bold,
                      fontSize: 3 * SizeConfig.textMultiplier),
                  textAlign: TextAlign.center,
                ),
                color: Color.fromRGBO(51, 51, 51, 0.9)),

            SizedBox(height: 0.4 * SizeConfig.heightMultiplier),

            SizedBox(height: 0.1 * SizeConfig.heightMultiplier),
          ],
        ),
      ),
    );
  }
}
