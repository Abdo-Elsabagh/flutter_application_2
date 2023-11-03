import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int Weight = 0;
  int Hight = 0;
  double Result = 0;
  String? classification;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        elevation: 0,
        title: const Center(
          child: Text(
            'BMI Calculator App',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 250,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Weight',
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              '$Weight kG',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                mini: true,
                                backgroundColor: Colors.grey,
                                child: const Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    Weight--;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                mini: true,
                                backgroundColor: Colors.grey,
                                child: const Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    Weight++;
                                  });
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 250,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Height',
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              '$Hight cm',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                mini: true,
                                backgroundColor: Colors.grey,
                                child: const Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    Hight--;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                mini: true,
                                backgroundColor: Colors.grey,
                                child: const Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    Hight++;
                                  });
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Result = Weight / (Hight * Hight);
                });
                if (Result < 16) {
                  classification = 'Severe Thinness';
                } else if (Result == 16 || Result == 17) {
                  classification = 'Moderate Thinness';
                } else if (Result >= 17 && Result < 18.5) {
                  classification = 'Mild Thinness';
                } else if (Result >= 18.5 && Result < 25) {
                  classification = 'Normal';
                } else if (Result >= 25 && Result < 30) {
                  classification = 'Overweight';
                } else if (Result >= 30 && Result < 35) {
                  classification = 'Obese Class I';
                } else if (Result > 35 && Result < 40) {
                  classification = 'Obese Class II';
                } else {
                  classification = 'bese Class III';
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.red[600],
                    borderRadius: BorderRadius.circular(5)),
                child: const Text(
                  'calculate',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              'Result : ${Result.toStringAsFixed(3)}',
              style: const TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '$classification',
              style: const TextStyle(color: Colors.green, fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
