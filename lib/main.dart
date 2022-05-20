import 'package:bmical/controllar.dart';
import 'package:bmical/secondpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    home: bmi1(),
  ));
}

class bmi1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: ChangeNotifierProvider<controllar>(
            create: (context) => controllar(),
            child: Consumer<controllar>(
              builder: (context, value, child) {
                return Column(
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            value.get(a: 0);
                          },
                          child: Container(
                              height: 180,
                              width: 155,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: value.gender == 0
                                      ? Color(0xffe3874f)
                                      : Color(0xff37363d),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Icon(
                                    Icons.male,
                                    size: 100,
                                    color: value.icon == 0
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                  Text(
                                    "Male",
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: value.fcolor == 0
                                            ? Colors.black
                                            : Colors.white),
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            value.get(a: 1);
                          },
                          child: Container(
                              height: 180,
                              width: 155,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: value.gender == 1
                                      ? Color(0xffe3874f)
                                      : Color(0xff37363d),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Icon(
                                    Icons.female,
                                    size: 100,
                                    color: value.icon == 1
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                  Text(
                                    "Female",
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: value.fcolor == 1
                                            ? Colors.black
                                            : Colors.white),
                                  )
                                ],
                              )),
                        ),
                      ],
                    )),
                    Container(
                        height: 180,
                        width: 320,
                        decoration: BoxDecoration(
                            color: Color(0xff37363d),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "HEIGHT",
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${value.height.toStringAsFixed(2)}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 40),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10, left: 2),
                                  child: Text(
                                    "cm",
                                    style: TextStyle(
                                        color: Colors.white60, fontSize: 15),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  inactiveTrackColor: Color(0xff707070),
                                  activeTrackColor: Colors.white,
                                  thumbColor: Color(0xffe3874f),
                                ),
                                child: Slider(
                                  value: value.height,
                                  min: 120.0,
                                  max: 220.0,
                                  onChanged: (val) {
                                    value.slider(val);
                                  },
                                ))
                          ],
                        )),
                    Expanded(
                        child: Row(
                      children: [
                        Container(
                          height: 180,
                          width: 155,
                          decoration: BoxDecoration(
                              color: Color(0xff37363d),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                "WEIGHT",
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${value.wight}",
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white10,
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: IconButton(
                                        onPressed: () {
                                          value.weightpluse();
                                        },
                                        icon: Icon(
                                          Icons.add,
                                          color: Color(0xffe3874f),
                                          size: 35,
                                        ),
                                      )),
                                  Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white10,
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: IconButton(
                                        onPressed: () {
                                          value.weightmin();
                                        },
                                        icon: Icon(Icons.remove,
                                            color: Color(0xffe3874f), size: 35),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 180,
                          width: 155,
                          decoration: BoxDecoration(
                              color: Color(0xff37363d),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                "AGE",
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${value.age}",
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.white10,
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: IconButton(
                                        onPressed: () {
                                          value.agepluse();
                                        },
                                        icon: Icon(
                                          Icons.add,
                                          color: Color(0xffe3874f),
                                          size: 35,
                                        )),
                                  ),
                                  Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white10,
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: IconButton(
                                        onPressed: () {
                                          value.agemin();
                                        },
                                        icon: Icon(Icons.remove,
                                            color: Color(0xffe3874f), size: 35),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                    InkWell(
                      onTap: () {
                        value.bmilogic();
                        value.getresult();
                        value.getinspiration();

                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return secondpage(bmi: value.bmi,getresult: value.getresult(),getinspiration: value.getinspiration(),);
                          },
                        ));
                      },
                      child: Container(
                        height: 60,
                        width: 320,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xff37363d),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          "CALCULATE",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                );
              },
            ),
          )),
    );
  }
}
