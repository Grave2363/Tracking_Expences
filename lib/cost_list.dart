// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:tracking_expences/shared/create_item.dart';
import 'package:tracking_expences/shared/styles.dart';
class cost_list extends StatefulWidget {

  const cost_list({Key? key}) : super(key: key);
  @override
  State<cost_list> createState() => _cost_listState();
}

class _cost_listState extends State<cost_list> {
  // both are temp testing lists, will change to the saved lists
  List name = <String>['A','B','C' ];
  List cost = <String>['5','4','7' ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: const Text('Expense List'),
      ),
      body: ListView.builder(
        itemBuilder: (context, position) {
          return Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding:
                        const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
                        child: Text(
                          name[position],
                          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                        child: Text(
                          "\$ "+cost[position],
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
        itemCount: name.length,
      ),
    );
  }
}
