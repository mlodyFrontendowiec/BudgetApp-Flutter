import 'package:flutter/material.dart';
import 'package:second_app/transaction.dart';

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
  final List<Transaction> transactions = [
    Transaction(
        id: "t1", title: "New Shoes", amount: 69.99, date: DateTime.now()),
    Transaction(
        id: "t2",
        title: "Weekly Groceries",
        amount: 16.54,
        date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter app"),
        ),
        body: Column(
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
              Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(labelText: "Title"),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: "Amount"),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text("Add Transaction"),
                        textColor: Colors.purple,
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: transactions
                    .map((tx) => Card(
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 20),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: Colors.purple,
                                  width: 2,
                                )),
                                child: Text('\$${tx.amount}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.purple)),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    tx.title,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(tx.date.toString(),
                                      style: TextStyle(color: Colors.grey))
                                ],
                              )
                            ],
                          ),
                        ))
                    .toList(),
              )
            ]));
  }
}
