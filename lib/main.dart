import 'package:flutter/material.dart';
import 'shared/styles.dart';
import 'cost_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Expense Tracker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: btnStyle,
                onPressed: ()async {
                await Navigator.of(context).push(MaterialPageRoute(builder: (context) => cost_list()),);},
                child:
                const Text('Manage Expenses', style: TextStyle(color: Colors.black, fontSize: 20)),),
                const SizedBox(height: 20),
                Text('Place_Holder_Greatest_Expense', style: TextStyle(color: Colors.black, fontSize: 20)),
                const SizedBox(height: 30),
                Text('Place_Holder_Total_Expenses', style: TextStyle(color: Colors.black, fontSize: 20)),
                const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
