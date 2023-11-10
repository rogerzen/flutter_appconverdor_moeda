import 'package:flutter/material.dart';

class ButtonConvert extends StatelessWidget {
  const ButtonConvert({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.amberAccent,
      ),
      onPressed: () {},
      child: const Text('Converter'),
    );
  }
}
