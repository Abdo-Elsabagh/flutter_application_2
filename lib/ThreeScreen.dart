import 'package:flutter/material.dart';

class ThreeScreen extends StatefulWidget {
  const ThreeScreen({super.key});

  @override
  State<ThreeScreen> createState() => _ThreeScreenState();
}

class _ThreeScreenState extends State<ThreeScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '0',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  mini: true,
                  backgroundColor: Colors.deepOrange,
                  onPressed: () {},
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  mini: true,
                  backgroundColor: Colors.deepOrange,
                  onPressed: () {},
                  child: const Icon(Icons.add),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              '$counter',
              style: const TextStyle(fontSize: 30, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    mini: true,
                    backgroundColor: Colors.deepOrange,
                    child: const Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        counter--;
                      });
                    }),
                const SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                    mini: true,
                    backgroundColor: Colors.deepOrange,
                    child: const Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    }), 
              ],
            )
          ],
        ),
      ),
    );
  }
}
