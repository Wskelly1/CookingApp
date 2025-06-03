import 'package:flutter/material.dart';

class SampleWidget extends StatelessWidget {
  const SampleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Sample Widget is working!',
        style: TextStyle(fontSize: 24, color: Colors.green),
      ),
    );
  }
} 