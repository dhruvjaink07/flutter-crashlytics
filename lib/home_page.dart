import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.usb_rounded),
                    border: OutlineInputBorder()),
              ),
            ),
            TextButton(
              onPressed: () => throw Exception(),
              child: const Text("Throw Test Exception"),
            ),
            const SizedBox(
              height: 20,
            ),
            //       Table(
            //         border: TableBorder.all(),
            //           columnWidths: const <int, TableColumnWidth>{
            //   2: IntrinsicColumnWidth(),
            //   1: FlexColumnWidth(),
            //   0: FixedColumnWidth(300),
            // },
            //         children: const [
            //           TableRow(children: [
            //             Center(
            //               child: Text('data'),
            //             ),
            //           ]),
            //           TableRow(children: [
            //             TableCell(
            //               child: Text("A"),
            //             ),

            //           ]),
            //           TableRow(children: [
            //             TableCell(
            //               child: Text("B"),
            //             )
            //           ]),
            //         ],
            //       ),
            DataTable(
              border: TableBorder.all(color: Colors.black),
              showCheckboxColumn: true,
                // dataTextStyle: TextStyle(color: Colors.blueAccent,fontSize: 20),
                // decoration: BoxDecoration(
                //   color: Colors.amberAccent,
                //   borderRadius: BorderRadius.circular(20),
                // ),
              columns: const [
              DataColumn(label: Text('Enroll No.')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Year of Study'))
            ], rows: const [
              DataRow(
                cells: [
                DataCell(Text('1')),
                DataCell(Text("Dhruv")),
                DataCell(Text('Third')),
                
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text("Fawaz")),
                DataCell(Text('Third'))
              ]),
            ])
          ],
        ),
      ),
    );
  }
}
