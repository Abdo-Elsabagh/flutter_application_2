import 'package:flutter/material.dart';

class FourSceen extends StatelessWidget {
  const FourSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                color: Colors.amber,
              ),
              Container(
                height: 200,
                color: Colors.black,
              ),
              Container(
                height: 600,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
