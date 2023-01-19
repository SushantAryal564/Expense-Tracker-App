import 'package:flutter/material.dart';
import "./transaction.dart";
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 16.53,
        date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('Chart'),
                elevation: 5,
              ),
            ),
            Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(decoration: InputDecoration(labelText: 'Title')),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                    ),
                    MaterialButton(
                      onPressed: null,
                      child: Text("Add Transaction"),
                      textColor: Colors.purple,
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: transaction.map((tx) {
                return Card(
                    child: Row(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Text('\$ ${tx.amount}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple)),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.purple,
                              width: 2,
                              style: BorderStyle.solid)),
                      padding: EdgeInsets.all(10),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tx.title,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          DateFormat.yMMMMd().format(tx.date),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ));
              }).toList(),
            )
          ],
        ));
  }
}
