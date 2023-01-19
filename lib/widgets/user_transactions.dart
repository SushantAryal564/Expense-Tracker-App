import 'package:flutter/material.dart';
import "./new_transaction.dart";
import "./transactionlist.dart";
import "./../models/transaction.dart";

class _UserTransaction extends StatefulWidget {
  const _UserTransaction({Key key}) : super(key: key);

  @override
  State<_UserTransaction> createState() => __UserTransactionState();
}

class __UserTransactionState extends State<_UserTransaction> {
  final List<Transaction> _userTransaction = [
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
    return Column(
        children: [NewTransaction(), TransactionList(_userTransaction)]);
  }
}
