// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// import 'brain.dart';

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
  // Widget _portraitMode() {
  //   return Stack(
  //     fit: StackFit.expand,
  //     children: <Widget>[
  //       new Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Text(
  //             "Portrait Mode",
  //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //           ),
  //           SizedBox(
  //             height: 30,
  //           ),
  //           new Image.asset(
  //             'assets/devs.jpg',
  //             height: 200,
  //             width: 200,
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }

//   Widget _landscapeMode() {
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       alignment: Alignment.center,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         //crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             "Patient Name\nor\nMRN",
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width * 0.3,
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.orange,
//                       border: OutlineInputBorder(borderSide: BorderSide()),
//                       enabledBorder: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.white, width: 2))),
//                 ),
//               ),
//               TextButton(
//                   onPressed: () {
//                     Navigator.of(context)
//                         .push(MaterialPageRoute(builder: (ctx) => Brain()));
//                   },
//                   style: TextButton.styleFrom(
//                       backgroundColor: Colors.orange,
//                       shape: RoundedRectangleBorder(
//                           side: BorderSide(color: Colors.white, width: 2))),
//                   child: Text(
//                     "Search",
//                     style: TextStyle(color: Colors.white),
//                   ))
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Screen Orientation In Flutter"),
//         centerTitle: true,
//       ),
      // body: OrientationBuilder(
      //   builder: (context, orientation) {
      //     if (orientation == Orientation.portrait) {
      //       return _portraitMode();
      //     } else {
      //       return _landscapeMode();
      //     }
      //   },
      // ),
//     );
//   }
// }
