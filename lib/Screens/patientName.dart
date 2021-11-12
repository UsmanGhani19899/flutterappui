import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_info/Screens/patientInfo.dart';

class PatientName extends StatefulWidget {
  @override
  State<PatientName> createState() => _PatientNameState();
}

String patientName = "";

class _PatientNameState extends State<PatientName> {
  final TextEditingController _controller = TextEditingController();
  Widget portraitMode(context) {
    return Container(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Patient Name\nor\nMRN",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.orange,
                    border: OutlineInputBorder(borderSide: BorderSide()),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  if (_controller.text != "") {
                    _controller.clear();
                    FocusScope.of(context).unfocus();
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => PAtientInfo()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please enter something")));
                  }
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 2))),
                child: Text(
                  "Search",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }

  Widget landscapeMode(context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Patient Name\nor\nMRN",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.orange,
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2))),
                ),
              ),
              TextButton(
                  onPressed: () {
                    if (_controller.text != "") {
                      _controller.clear();
                      FocusScope.of(context).unfocus();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => PAtientInfo()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please enter something")));
                    }
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white, width: 2))),
                  child: Text(
                    "Search",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return orientation == Orientation.portrait
          ? SafeArea(
              child: Scaffold(
                  backgroundColor: Theme.of(context).backgroundColor,
                  body: portraitMode(context)))
          : SafeArea(
              child: Scaffold(
                  backgroundColor: Theme.of(context).backgroundColor,
                  body: landscapeMode(context)));
    });
  }
}
