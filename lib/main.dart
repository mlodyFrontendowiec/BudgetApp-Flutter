import 'package:flutter/material.dart';
import 'package:second_app/widgets/new_transaction.dart';
import 'package:second_app/widgets/transaction_list.dart';
import 'package:second_app/widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter app"),
        ),
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
              Card(
                child: Container(
                  child: Text("CHART"),
                  width: double.infinity,
                ),
                elevation: 5,
                color: Colors.blue,
              ),
              UserTransactions()
            ])));
  }
}
