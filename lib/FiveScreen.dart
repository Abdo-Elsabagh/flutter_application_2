import 'package:flutter/material.dart';

class FiveScreen extends StatelessWidget {
  const FiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: itemBuilder)
            //scrollDirection: Axis.horizontal,
            //scrollDirection: Axis.vertical,
             
          
        ),
      ),
    );
  }
}
