import 'package:day_19/calculate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeWork extends StatefulWidget {
  const HomeWork({super.key});

  @override
  State<HomeWork> createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  Color bgclr = Color(0xffD1B2FF);
  Color crdclr = Colors.lightBlue;
  bool ismale = true;
  int weight = 25;
  int age = 25;
  double height = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgclr,
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(fontSize: 30.sp),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              child: Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            ismale = true;
                          });
                        },
                        child: Card(
                          color: ismale == true ? Colors.teal : crdclr,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 60.h.w,
                                backgroundImage: AssetImage(
                                  "images/male.jpg",
                                ),
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ),
                      ),
                      flex: 5,
                    ),
                    Expanded(
                      child: Container(
                        color: bgclr,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              ismale = false;
                            });
                          },
                          child: Card(
                            color: ismale == false ? Colors.teal : crdclr,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 60.h.w,
                                  backgroundImage: AssetImage(
                                    "images/female.jpg",
                                  ),
                                ),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30.sp,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      flex: 5,
                    )
                  ],
                ),
                flex: 6,
              ),
            ),
            Container(
              child: Expanded(
                child: Card(
                  color: crdclr,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Height",
                        style: TextStyle(
                            fontSize: 25.sp, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${height.toStringAsFixed(0)}",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40.sp),
                          ),
                          Text(
                            "CM",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.sp),
                          )
                        ],
                      ),
                      Slider(
                          activeColor: Colors.grey,
                          inactiveColor: Colors.teal,
                          min: 70,
                          max: 210,
                          value: height,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          })
                    ],
                  ),
                ),
                flex: 4,
              ),
            ),
            Container(
              child: Expanded(
                child: Container(
                  color: bgclr,
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          color: crdclr,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Weight",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.sp),
                              ),
                              Text(
                                "$weight",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40.sp),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      if (weight > 1) {
                                        setState(() {
                                          weight--;
                                        });
                                      }
                                    },
                                    child: Icon(Icons.remove),
                                    style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(15)),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: Icon(Icons.add),
                                    style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(15)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        flex: 5,
                      ),
                      Expanded(
                        child: Card(
                          color: crdclr,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Age",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.sp),
                              ),
                              Text(
                                "$age",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40.sp),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      if (age > 1) {
                                        setState(() {
                                          age--;
                                        });
                                      }
                                    },
                                    child: Icon(Icons.remove),
                                    style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(15)),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: Icon(Icons.add),
                                    style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(15)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        flex: 5,
                      ),
                    ],
                  ),
                ),
                flex: 5,
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: MaterialButton(
                  color: crdclr,
                  onPressed: () {
                    var bmi = weight / (height * height / 10000);
                    double h = height;
                    double w = weight.toDouble();

                    print("Your BMI is $bmi");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Calculate(bmi)));
                  },
                  height: 55,
                  minWidth: double.infinity,
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp),
                  ),
                ),
              ),
            ),
            // Expanded(
            //     flex: 1,
            //     child: Container(
            //       child: Text("data"),
            //     ))
          ],
        ),
      ),
    );
  }
}
