import 'package:flutter/material.dart';
import 'package:second_app/models/transaction.dart';

class TransactionList extends StatelessWidget {
  List<Transaction> userTransaction = [];

  TransactionList({@required this.userTransaction});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: userTransaction
          .map((tx) => Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(tx.date.toString(),
                            style: TextStyle(color: Colors.grey))
                      ],
                    )
                  ],
                ),
              ))
          .toList(),
    );
  }
}
