import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddMoney extends StatelessWidget {

  void Function() addmoneyfunction;

   AddMoney({super.key,required this.addmoneyfunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red[400],
            minimumSize: const Size(double.infinity, 0),
          ),
          onPressed: addmoneyfunction,
          child: const Text('Add Money')),
    );
  }
}
