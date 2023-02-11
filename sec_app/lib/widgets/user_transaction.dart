import 'package:flutter/material.dart';
import './new_transction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class userTransacton extends StatefulWidget {
  const userTransacton({Key key}) : super(key: key);

  @override
  State<userTransacton> createState() => _userTransactonState();
}

class _userTransactonState extends State<userTransacton> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];
  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        newTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
