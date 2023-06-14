import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../style/app_style.dart';
import '../widget/custom_buttom.dart';

class AllPage extends StatelessWidget {
  AllPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screenHight,
            width: screenWidth,
            color: Colors.grey.shade100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 100,
                  width: screenWidth / 3,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Card(
                    child: SafeArea(
                        child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                    height: 200,
                                    // width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(68, 138, 255, 1),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8),
                                        )),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Order No: 0001",
                                                style: AppStyle.title_style,
                                              ),
                                              Text(
                                                "Order date: 11-Dec-2022",
                                                style:
                                                    AppStyle.description_style,
                                              ),
                                              Text(
                                                "Order Time: 12:00 PM",
                                                style:
                                                    AppStyle.description_style,
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Table No: A1",
                                                style: AppStyle.title_style,
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Delivery Type: Dine In",
                                                style: AppStyle.title_style,
                                              ),
                                            ]),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Estimated Time',
                                              style: AppStyle.description_style,
                                            ),
                                            Icon(
                                              Icons.lock_clock,
                                              color: Colors.black,
                                              size: 35,
                                            ),
                                            Text(
                                              '25 Mins',
                                              style: AppStyle.description_style,
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                                Table(
                                  border: TableBorder.all(
                                      color: Colors.grey.shade400),
                                  defaultVerticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  children: [
                                    TableRow(children: [
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Item Name'),
                                          )),
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(child: Text('QTY')),
                                          )),
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child:
                                                Center(child: Text('Status')),
                                          )),
                                    ]),
                                    TableRow(children: [
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Polao'),
                                          )),
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(child: Text('2')),
                                          )),
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(child: Text('New')),
                                          )),
                                    ]),
                                    TableRow(children: [
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Coke'),
                                          )),
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(child: Text('1')),
                                          )),
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(child: Text('Ready')),
                                          )),
                                    ])
                                  ],
                                ),
                              ],
                            ),
                          ),

                          // SizedBox(
                          //   height: 40,
                          // ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomButton(
                                    'Supplementary', () {}, Colors.greenAccent),
                                CustomButton(
                                    'Complete', () {}, Colors.blueAccent),
                                CustomButton(
                                    'Swap Table', () {}, Colors.purpleAccent),
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                  ),
                ),
                Container(
                  height: 100,
                  width: screenWidth / 3,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Card(
                    child: SafeArea(
                        child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                    height: 200,
                                    // width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(68, 138, 255, 1),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8),
                                        )),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Order No: 0001",
                                                style: AppStyle.title_style,
                                              ),
                                              Text(
                                                "Order date: 11-Dec-2022",
                                                style:
                                                    AppStyle.description_style,
                                              ),
                                              Text(
                                                "Order Time: 12:00 PM",
                                                style:
                                                    AppStyle.description_style,
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Table No: A1",
                                                style: AppStyle.title_style,
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Delivery Type: Dine In",
                                                style: AppStyle.title_style,
                                              ),
                                            ]),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Estimated Time',
                                              style: AppStyle.description_style,
                                            ),
                                            Icon(
                                              Icons.lock_clock,
                                              color: Colors.black,
                                              size: 35,
                                            ),
                                            Text(
                                              '25 Mins',
                                              style: AppStyle.description_style,
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                                Table(
                                  border: TableBorder.all(
                                      color: Colors.grey.shade400),
                                  defaultVerticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  children: [
                                    TableRow(children: [
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Item Name'),
                                          )),
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(child: Text('QTY')),
                                          )),
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child:
                                                Center(child: Text('Status')),
                                          )),
                                    ]),
                                    TableRow(children: [
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Polao'),
                                          )),
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(child: Text('2')),
                                          )),
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(child: Text('New')),
                                          )),
                                    ]),
                                    TableRow(children: [
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Coke'),
                                          )),
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(child: Text('1')),
                                          )),
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(child: Text('Ready')),
                                          )),
                                    ])
                                  ],
                                ),
                              ],
                            ),
                          ),

                          // SizedBox(
                          //   height: 40,
                          // ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomButton(
                                    'Supplementary', () {}, Colors.greenAccent),
                                CustomButton(
                                    'Complete', () {}, Colors.blueAccent),
                                CustomButton(
                                    'Swap Table', () {}, Colors.purpleAccent),
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                  ),
                ),
                Container(
                  height: 100,
                  width: screenWidth / 3,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Card(
                    child: SafeArea(
                        child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                    height: 200,
                                    // width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(68, 138, 255, 1),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8),
                                        )),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Order No: 0001",
                                                style: AppStyle.title_style,
                                              ),
                                              Text(
                                                "Order date: 11-Dec-2022",
                                                style:
                                                    AppStyle.description_style,
                                              ),
                                              Text(
                                                "Order Time: 12:00 PM",
                                                style:
                                                    AppStyle.description_style,
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Table No: A1",
                                                style: AppStyle.title_style,
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Delivery Type: Dine In",
                                                style: AppStyle.title_style,
                                              ),
                                            ]),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Estimated Time',
                                              style: AppStyle.description_style,
                                            ),
                                            Icon(
                                              Icons.lock_clock,
                                              color: Colors.black,
                                              size: 35,
                                            ),
                                            Text(
                                              '25 Mins',
                                              style: AppStyle.description_style,
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                                Table(
                                  border: TableBorder.all(
                                      color: Colors.grey.shade400),
                                  defaultVerticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  children: [
                                    TableRow(children: [
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Item Name'),
                                          )),
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(child: Text('QTY')),
                                          )),
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child:
                                                Center(child: Text('Status')),
                                          )),
                                    ]),
                                    TableRow(children: [
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Polao'),
                                          )),
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(child: Text('2')),
                                          )),
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(child: Text('New')),
                                          )),
                                    ]),
                                    TableRow(children: [
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Coke'),
                                          )),
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(child: Text('1')),
                                          )),
                                      TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(child: Text('Ready')),
                                          )),
                                    ])
                                  ],
                                ),
                              ],
                            ),
                          ),

                          // SizedBox(
                          //   height: 40,
                          // ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomButton(
                                    'Supplementary', () {}, Colors.greenAccent),
                                CustomButton(
                                    'Complete', () {}, Colors.blueAccent),
                                CustomButton(
                                    'Swap Table', () {}, Colors.purpleAccent),
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
