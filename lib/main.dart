import 'package:billionaireapp/add_money.dart';
import 'package:billionaireapp/balance_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double balance = 0;
  void addbalance() async {
    setState(() {
      balance = balance + 500;
    });

    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('balance', balance);
    print(balance);
  }

  @override
  void initState() {
    localbalance();
    super.initState();
  }

  void localbalance() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      balance = prefs.getDouble('balance') ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey[800],
          title: const Text('Billionaire App!'),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          color: Colors.blueGrey[700],
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BalancePart(balance: balance),
                AddMoney(addmoneyfunction: addbalance)
              ]),
        ),
      ),
    );
  }
}
