import 'package:flutter/material.dart';
import 'package:expenseplanner/new_transaction.dart';
import 'package:expenseplanner/transaction_list.dart';
import 'package:expenseplanner/models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 'T1', title: 'New Shoes', amount: 70.54, date: DateTime.now()),
    Transaction(
        id: 'T2',
        title: 'Weekly Expenses',
        amount: 47.78,
        date: DateTime.now()),
    Transaction(id: 'T3', title: 'Bag', amount: 50.14, date: DateTime.now()),
    Transaction(id: 'T4', title: 'Dress', amount: 20.99, date: DateTime.now()),
  ];
  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransacationList(_userTransactions),
      ],
    );
  }
}
