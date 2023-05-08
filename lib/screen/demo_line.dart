
import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_graphing/widget/indicator.dart';

class DemoLine extends StatefulWidget {
  const DemoLine({Key? key}) : super(key: key);

  @override
  State<DemoLine> createState() => _DemoLineState();
}

class _DemoLineState extends State<DemoLine> {
  List<Map<String, dynamic>> dataCalorie = [
    {'month': 0, 'percent': 2},
    {'month': 3, 'percent': 4},
    {'month': 3, 'percent': 3},
    {'month': 4, 'percent': 5},
    {'month': 5, 'percent': 6},
    {'month': 6, 'percent': 7},
    {'month': 7, 'percent': 4},
    {'month': 8, 'percent': 6},
    {'month': 9, 'percent': 5},
    {'month': 10, 'percent': 7},
    {'month': 11, 'percent': 8},
    {'month': 12, 'percent': 4},
  ];
  List<Map<String, dynamic>> dataProtein = [
    {'month': 0, 'percent': 11},
    {'month': 2, 'percent': 10},
    {'month': 3, 'percent': 13},
    {'month': 4, 'percent': 14},
    {'month': 5, 'percent': 10},
    {'month': 6, 'percent': 11},
    {'month': 7, 'percent': 13},
    {'month': 8, 'percent': 12},
    {'month': 9, 'percent': 14},
    {'month': 10, 'percent': 13},
    {'month': 11, 'percent': 10},
    {'month': 12, 'percent': 11},
  ];
  List<Map<String, dynamic>> dataLipid = [
    {'month': 0, 'percent': 16},
    {'month': 2, 'percent': 15},
    {'month': 3, 'percent': 17},
    {'month': 4, 'percent': 19},
    {'month': 5, 'percent': 16},
    {'month': 6, 'percent': 18},
    {'month': 7, 'percent': 19},
    {'month': 8, 'percent': 19},
    {'month': 9, 'percent': 15},
    {'month': 10, 'percent': 17},
    {'month': 11, 'percent': 18},
    {'month': 12, 'percent': 17},
  ];
  List<Map<String, dynamic>> dataCarbohydrate = [
    {'month': 0, 'percent': 22},
    {'month': 2, 'percent': 20},
    {'month': 3, 'percent': 23},
    {'month': 4, 'percent': 21},
    {'month': 5, 'percent': 24},
    {'month': 6, 'percent': 21},
    {'month': 7, 'percent': 23},
    {'month': 8, 'percent': 24},
    {'month': 9, 'percent': 24},
    {'month': 10, 'percent': 23},
    {'month': 11, 'percent': 21},
    {'month': 12, 'percent': 24},
  ];
  List<Map<String, dynamic>> dataSugar = [
    {'month': 0, 'percent': 27},
    {'month': 2, 'percent': 29},
    {'month': 3, 'percent': 26},
    {'month': 4, 'percent': 28},
    {'month': 5, 'percent': 27},
    {'month': 6, 'percent': 28},
    {'month': 7, 'percent': 28},
    {'month': 8, 'percent': 29},
    {'month': 9, 'percent': 27},
    {'month': 10, 'percent': 30},
    {'month': 11, 'percent': 30},
    {'month': 12, 'percent': 26},
  ];
  List<Map<String, dynamic>> dataSalt = [
    {'month': 0, 'percent': 33},
    {'month': 2, 'percent': 30},
    {'month': 3, 'percent': 31},
    {'month': 4, 'percent': 33},
    {'month': 5, 'percent': 35},
    {'month': 6, 'percent': 34},
    {'month': 7, 'percent': 34},
    {'month': 8, 'percent': 34},
    {'month': 9, 'percent': 33},
    {'month': 10, 'percent': 31},
    {'month': 11, 'percent': 32},
    {'month': 12, 'percent': 33},
  ];
  List<Map<String, dynamic>> dataVitamin = [
    {'month': 0, 'percent': 40},
    {'month': 2, 'percent': 40},
    {'month': 3, 'percent': 44},
    {'month': 4, 'percent': 54},
    {'month': 5, 'percent': 53},
    {'month': 6, 'percent': 52},
    {'month': 7, 'percent': 51},
    {'month': 8, 'percent': 54},
    {'month': 9, 'percent': 55},
    {'month': 10, 'percent': 56},
    {'month': 11, 'percent': 56},
    {'month': 12, 'percent': 58},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Details of Graph")),
        body: Center(
          child: ListView(
            //padding: const EdgeInsets.only(top: 10,),
            children: [
              const SizedBox(
                  height: 50,
                  child: Card(
                    child: Center(
                        child: Text(
                      "Food Details",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    )),
                  )),
              AspectRatio(
                aspectRatio: 1 / 1,
                child: Card(
                  child: DChartLine(
                    data: [
                      {
                        'id': 'Calorie',
                        'data': dataCalorie.map((e) {
                          return {
                            'domain': e['month'] - 0,
                            'measure': e['percent']
                          };
                        }).toList(),
                      },
                      {
                        'id': 'Protein',
                        'data': dataProtein.map((e) {
                          return {
                            'domain': e['month'] - 0,
                            'measure': e['percent']
                          };
                        }).toList(),
                      },
                      {
                        'id': 'Lipid',
                        'data': dataLipid.map((e) {
                          return {
                            'domain': e['month'] - 0,
                            'measure': e['percent']
                          };
                        }).toList(),
                      },
                      {
                        'id': 'Carbohydrate',
                        'data': dataCarbohydrate.map((e) {
                          return {
                            'domain': e['month'] - 0,
                            'measure': e['percent']
                          };
                        }).toList(),
                      },
                      {
                        'id': 'Sugar',
                        'data': dataSugar.map((e) {
                          return {
                            'domain': e['month'] - 0,
                            'measure': e['percent']
                          };
                        }).toList(),
                      },
                      {
                        'id': 'Salt',
                        'data': dataSalt.map((e) {
                          return {
                            'domain': e['month'] - 0,
                            'measure': e['percent']
                          };
                        }).toList(),
                      },
                      {
                        'id': 'Vitamin',
                        'data': dataVitamin.map((e) {
                          return {
                            'domain': e['month'] - 0,
                            'measure': e['percent']
                          };
                        }).toList(),
                      },
                    ],
                    includeArea: true,
                    //includePoints: true,
                    lineColor: (lineData, index, id) {
                      if (id == 'Calorie') {
                        return Colors.blue;
                      } else if (id == 'Protein') {
                        return Colors.black;
                      } else if (id == 'Lipid') {
                        return Colors.red;
                      } else if (id == 'Carbohydrate') {
                        return Colors.yellow;
                      } else if (id == 'Sugar') {
                        return Colors.orange;
                      } else if (id == 'Salt') {
                        return Colors.pink;
                      } else {
                        return Colors.green;
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(
                  height: 50,
                  child: Card(
                    child: Center(
                        child: Text(
                      "Month",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    )),
                  )),
              const SizedBox(
                  height: 50,
                  child: Card(
                    child: Center(
                        child: Text(
                      "Food Details Indicator's",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    )),
                  )),
              SizedBox(
                child: Card(
                  child: Column(children: [
                    Indicator(
                        color: Colors.blue, text: 'Calorie', isSquare: true),
                    Indicator(
                        color: Colors.black, text: 'Protein', isSquare: true),
                    Indicator(color: Colors.red, text: 'Lipid', isSquare: true),
                    Indicator(
                        color: Colors.yellow,
                        text: 'Carbohydrate',
                        isSquare: true),
                    Indicator(
                        color: Colors.orange, text: 'Sugar', isSquare: true),
                    Indicator(color: Colors.pink, text: 'Salt', isSquare: true),
                    Indicator(
                        color: Colors.green, text: 'Vitamin', isSquare: true)
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
