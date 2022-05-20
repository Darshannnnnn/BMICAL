import 'package:bmical/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondpage extends StatelessWidget {
  double? bmi;
  String? getresult;
  String? getinspiration;

  secondpage({this.bmi,this.getresult,this.getinspiration});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(backgroundColor: Colors.black54),
      body: Padding(
        padding:  EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Your Result",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 500,
              width: 320,
             decoration: BoxDecoration(
               color:  Color(0xff37363d),
               borderRadius: BorderRadius.circular(20)
             ),
              child:Padding(
                padding:  EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("${getresult}",style: TextStyle(color: Colors.green,fontSize: 30),),
                    Text("${bmi!.toStringAsFixed(2)}",style: TextStyle(color: Colors.white,fontSize: 100),),
                    Text("${getinspiration}",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ],
                ),
              )
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return bmi1();
                },));
              },
              child: Container(
                height: 60,
                width: 320,
                alignment:Alignment.center,
                decoration: BoxDecoration(
                    color:  Color(0xff37363d),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text("RE-CALCULATE",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
