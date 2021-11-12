import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:patient_info/Screens/patientName.dart';

class Data extends StatefulWidget {
  const Data({Key? key}) : super(key: key);

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  Widget _landscapeMode() {
    tableHead(String tableHeading) {
      return Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.12,
        decoration: BoxDecoration(
            color: Colors.orange, border: Border.all(color: Colors.white)),
        child: Text(
          "$tableHeading",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
      );
    }

    tableData(String tableData) {
      return Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.12,
        decoration: BoxDecoration(
            color: Colors.orange.shade200,
            border: Border.all(color: Colors.white)),
        child: Text(
          "$tableData",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
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
                "Data",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
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
                "Total Concussion",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tableHead("Age"),
                  tableHead("Sex"),
                  tableHead("Weight"),
                  tableHead("Sport"),
                  tableHead("Impact\nArea"),
                  tableHead("Symptoms"),
                  tableHead("Baseline"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tableData("12"),
                  tableData("M"),
                  tableData("170"),
                  tableData("Football"),
                  tableData("Frontal"),
                  tableData("Headache"),
                  tableData("No"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _portraitMode() {
    tableHead(String tableHeading) {
      return Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
            color: Colors.orange, border: Border.all(color: Colors.white)),
        child: Text(
          "$tableHeading",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
      );
    }

    tableData(String tableData) {
      return Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
            color: Colors.orange.shade200,
            border: Border.all(color: Colors.white)),
        child: Text(
          "$tableData",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.symmetric(),
            child: Column(
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
                      "Data",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                  ],
                ),
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
                      "Total Concussion",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tableHead("Age"),
                  tableHead("Sex"),
                  tableHead("Weight"),
                  tableHead("Sport"),
                  tableHead("Impact\nArea"),
                  tableHead("Symptoms"),
                  tableHead("Baseline"),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tableData("12"),
                  tableData("M"),
                  tableData("170"),
                  tableData("Football"),
                  tableData("Frontal"),
                  tableData("Headache"),
                  tableData("No"),
                ],
              )
            ],
          )
        ],
      ),
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
