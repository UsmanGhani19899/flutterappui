import 'package:flutter/material.dart';
import 'package:patient_info/Screens/data.dart';
import 'package:patient_info/Screens/patientName.dart';

import 'Screens/patientInfo.dart';

void main() => runApp(PatientInfo());

class PatientInfo extends StatelessWidget {
  const PatientInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.grey),
      home: PatientName(),
      debugShowCheckedModeBanner: false,
    );
  }
}
