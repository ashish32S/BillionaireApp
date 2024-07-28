import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class BalancePart extends StatelessWidget {
  double balance;
  BalancePart({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Bank Balance'),
          const SizedBox(height: 20),
          Text('\$ ${NumberFormat.simpleCurrency(name: '').format(balance)} '),
        ],
      ),
    );
  }
}
