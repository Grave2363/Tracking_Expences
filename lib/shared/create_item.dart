
import 'package:flutter/material.dart';
// ignore: camel_case_types
class create_item extends StatefulWidget {
  const create_item({Key? key}) : super(key: key);

  @override
  State<create_item> createState() => _create_itemState();
}

class _create_itemState extends State<create_item> {
  TextEditingController costNameEditor = TextEditingController();
  TextEditingController costValueEditor = TextEditingController();
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
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: costNameEditor,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Expence Name',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: costValueEditor,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Expence Cost',
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(onPressed: ()async {
              /*await Navigator.of(context).push(MaterialPageRoute(builder: (context) => create_item()),);*/},
              child:
              const Text('Save', style: TextStyle(color: Colors.black, fontSize: 20)),),
            ],
      ),
      ),
      ),
    );
  }
}
