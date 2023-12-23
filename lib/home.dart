import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result = "";
  var bgColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(title: Text('BMI Calculator')),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'Check Your Health With BMI♥',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  )),
                  SizedBox(
                    height: 50,
                  ),
                  //Wight
                  TextField(
                    controller: wtController,
                    decoration: InputDecoration(
                      label: Text('Enter Your Wight( in kg)'),
                      prefixIcon: Icon(Icons.line_weight),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 10),
                  //Hight
                  TextField(
                    controller: ftController,
                    decoration: InputDecoration(
                      label: Text('Enter Your Height( in feet)'),
                      prefixIcon: Icon(Icons.height),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 10),
                  //in
                  TextField(
                    controller: inController,
                    decoration: InputDecoration(
                      label: Text('Enter Your Height( in inch)'),
                      prefixIcon: Icon(Icons.line_weight),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 22),
                  //button............
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 44),
                        textStyle: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    child: Text('Check'),
                    onPressed: () {
                      var wt = wtController.text.toString();
                      var ft = ftController.text.toString();
                      var inch = inController.text.toString();
                      if (wt != "" && ft != "" && inch != "") {
                        //calculate
                        var iwt = int.parse(wt);
                        var ift = int.parse(ft);
                        var iInch = int.parse(inch);
                        //
                        var tInch = (ift * 12) + iInch;
                        var tcm = tInch * 2.54; //tInch
                        var tM = tcm / 100;
                        var bmi = iwt / (tM * tM);

                        //again health bmi
                        var msg = "";
                        if (bmi > 25) {
                          msg = 'Yor are Over Wight!!😒';
                          bgColor = Colors.orange.shade200;
                        } else if (bmi < 18) {
                          msg = "You're UnderWight!!🤷‍♀️";
                          bgColor = Colors.orange.shade300;
                        } else {
                          msg = "You're Healthy!!😍";
                          bgColor = Colors.green.shade200;
                        }
                        //
                        setState(() {
                          result =
                              "$msg\nYour BMi Health Is:${bmi.toStringAsFixed(2)}";
                        });
                      } else {
                        setState(() {
                          result = 'Plesse Required all Blanks';
                        });
                      }
                      wtController.clear();
                      ftController.clear();
                      inController.clear();
                    },
                  ),
                  SizedBox(height: 100),
                  Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: double.infinity,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: Text(result,
                        style: TextStyle(fontSize: 22, color: Colors.black)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
