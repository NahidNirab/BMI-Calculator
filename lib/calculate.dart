import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Calculate extends StatelessWidget {
  var bmiFromHome;

  Calculate(this.bmiFromHome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Index"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.teal),
                  child: Text("Your Body Mass Index is $bmiFromHome ")),
              SizedBox(
                height: 8,
              ),
              bmiFromHome <= 18.5
                  ? Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.red),
                      child: Text("You are Under weight"))
                  : bmiFromHome >= 18.6 && bmiFromHome <= 24.9
                      ? Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.green),
                          child: Text("Your Bmi is Normal"))
                      : Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.yellow),
                          child: Text("You are over Weight")),
              SizedBox(
                height: 8,
              ),
              MaterialButton(
                  color: Colors.yellow,
                  child: Text("Go Back"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
