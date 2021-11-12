import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_info/Screens/patientName.dart';

import 'brain.dart';
import 'data.dart';

class PAtientInfo extends StatefulWidget {
  const PAtientInfo({Key? key}) : super(key: key);

  @override
  State<PAtientInfo> createState() => _PAtientInfoState();
}

class _PAtientInfoState extends State<PAtientInfo> {
  portabletableHead(String tableHead) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: BoxDecoration(
        color: Colors.orange,
        border: Border.all(color: Colors.white),
      ),
      child: Text(
        "$tableHead",
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  portabletableData(String tableData) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: BoxDecoration(
          color: Colors.orange.shade200,
          border: Border.all(color: Colors.white)),
      child: Text(
        "$tableData",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }

  tableHead(String tableHead) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
        color: Colors.orange,
        border: Border.all(color: Colors.white),
      ),
      child: Text(
        "$tableHead",
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  tableData(String tableData) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
          color: Colors.orange.shade200,
          border: Border.all(color: Colors.white)),
      child: Text(
        "$tableData",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _portraitMode() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Container(
        //   child: Row(
        //     children: [
        //       // GestureDetector(
        //       //     onTap: () {
        //       //       Navigator.pop(context);
        //       //     },
        //       //     child: Icon(Icons.arrow_back)),
        //       IconButton(
        //           onPressed: () {
        //             Navigator.of(context).push(
        //                 MaterialPageRoute(builder: (ctx) => PatientName()));
        //           },
        //           icon: Icon(Icons.home)),
        //     ],
        //   ),
        // ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 80),
            child: Text(
              "John Refiner DOB 1/15/2007",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 25),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, bottom: 50, top: 60),
          child: Column(
            children: [
              Row(
                children: [
                  portabletableHead("Age"),
                  portabletableHead("Sex"),
                  portabletableHead("Weight"),
                ],
              ),
              Row(
                children: [
                  portabletableData("13"),
                  portabletableData("Male"),
                  portabletableData("170")
                ],
              )
            ],
          ),
        ),
        Center(
          child: PortableMyButton(
            context: context,
            title: "Image",
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (ctx) => Brain())),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: PortableMyButton(
            context: context,
            title: "Data",
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (ctx) => Data())),
          ),
        ),
      ],
    );
  }

  Widget _landscapeMode() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 30, bottom: 50, top: 10),
          child: Text(
            "John Refiner DOB 1/15/2007",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 25),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 70, bottom: 50),
          child: Column(
            children: [
              Row(
                children: [
                  tableHead("Age"),
                  tableHead("Sex"),
                  tableHead("Weight"),
                ],
              ),
              Row(
                children: [
                  tableData("13"),
                  tableData("Male"),
                  tableData("170")
                ],
              )
            ],
          ),
        ),
        LandscapeMyButton(
          context: context,
          title: "Image",
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (ctx) => Brain())),
        ),
        SizedBox(
          height: 10,
        ),
        LandscapeMyButton(
          context: context,
          title: "Data",
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (ctx) => Data())),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
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

class LandscapeMyButton extends StatelessWidget {
  final String? title;
  final Function()? onTap;
  LandscapeMyButton({
    Key? key,
    this.title,
    this.onTap,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 100),
      height: 35,
      width: 80,
      child: TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white, width: 0.75))),
          child: Text(
            title!,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          )),
    );
  }
}

class PortableMyButton extends StatelessWidget {
  final String? title;
  final Function()? onTap;
  PortableMyButton({
    Key? key,
    this.title,
    this.onTap,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 80,
      child: TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white, width: 0.75))),
          child: Text(
            title!,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          )),
    );
  }
}
