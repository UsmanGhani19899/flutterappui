import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_info/Screens/patientInfo.dart';
import 'package:patient_info/Screens/patientName.dart';

class Brain extends StatefulWidget {
  const Brain({Key? key}) : super(key: key);

  @override
  State<Brain> createState() => _BrainState();
}

class _BrainState extends State<Brain> {
  Widget _landscapeMode() {
    tableHead(String tableHead) {
      return Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.12,
        decoration: BoxDecoration(
          color: Colors.orange,
          border: Border.all(color: Colors.white),
        ),
        child: Text(
          "$tableHead",
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      );
    }

    tableData(String tableData) {
      return Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.12,
        decoration: BoxDecoration(
            color: Colors.orange.shade200,
            border: Border.all(color: Colors.white)),
        child: Text(
          "$tableData",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Icon(
                  Icons.fiber_manual_record,
                  size: 18,
                  color: Colors.orange,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Image",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [tableHead("Impact Area"), tableHead("Symptoms")],
                ),
                Row(
                  children: [tableData("Frontal"), tableData("Headache")],
                )
              ],
            )
          ],
        ),
        Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Image(
                image: AssetImage("assets/images/brain.png"),
                width: 170,
              ),
            ),
            Transform(
              alignment: FractionalOffset.center,
              transform: new Matrix4.identity()..rotateZ(-14 * 3.1415927 / 180),
              child: Container(
                margin: EdgeInsets.only(left: 200, top: 30),
                height: 5,
                width: 220,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _portraitMode() {
    tableHead(String tableHead) {
      return Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          color: Colors.orange,
          border: Border.all(color: Colors.white),
        ),
        child: Text(
          "$tableHead",
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      );
    }

    tableData(String tableData) {
      return Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
            color: Colors.orange.shade200,
            border: Border.all(color: Colors.white)),
        child: Text(
          "$tableData",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Icon(
                Icons.fiber_manual_record,
                size: 18,
                color: Colors.orange,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Image",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [tableHead("Impact Area"), tableHead("Symptoms")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [tableData("Frontal"), tableData("Headache")],
              )
            ],
          ),
        ),
        Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Image(
                image: AssetImage("assets/images/brain.png"),
                width: 150,
              ),
            ),
            Transform(
              alignment: FractionalOffset.center,
              transform: new Matrix4.identity()..rotateZ(-60 * 3.1415927 / 180),
              child: Container(
                margin: EdgeInsets.only(left: 100, top: 30),
                height: 5,
                width: 191,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Colors.orange)),
          actions: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => PatientName()));
                  },
                  child: Icon(
                    Icons.home,
                    color: Colors.orange,
                  )),
            ),
          ],
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        body: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return _portraitMode();
            } else {
              return _landscapeMode();
            }
          },
        ),
      ),
    );
  }
}
