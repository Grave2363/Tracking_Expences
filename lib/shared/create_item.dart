import 'package:flutter/material.dart';
// ignore: camel_case_types
class create_item extends StatefulWidget {
  const create_item({Key? key}) : super(key: key);

  @override
  State<create_item> createState() => _create_itemState();
}

class _create_itemState extends State<create_item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: const Text('New Expense'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
      ),
      ),
      ),
    );
  }
}
