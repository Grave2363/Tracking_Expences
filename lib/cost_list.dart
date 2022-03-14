// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
class cost_list extends StatefulWidget {
  const cost_list({Key? key}) : super(key: key);

  @override
  State<cost_list> createState() => _cost_listState();
}

class _cost_listState extends State<cost_list> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: const Text('Expense List'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(),
        ),
      ),
    );
  }
}
