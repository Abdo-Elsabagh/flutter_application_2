import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.red,
              ),
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.green,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/82.jpg'),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 9,
                    backgroundColor: Colors.green,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, elevation: 0.0),
              onPressed: () {},
              child: const Text('Click Here')),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    // backgroundColor: Colors.red,
                    side: const BorderSide(color: Colors.red)),
                onPressed: () {},
                child: const Text('Click Here')),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.blue),
                onPressed: () {},
                child: const Text('Click Here')),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  size: 40,
                  color: Colors.red,
                )),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.favorite),
          ),
        ]),
      ),
    );
  }
}
