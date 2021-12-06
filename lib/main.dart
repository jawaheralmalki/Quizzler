import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Widget> Ansure = const [
    Icon(
      Icons.check,
      color: Colors.green,
      size: 24.0,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
      size: 24.0,
    ),
    Icon(
      Icons.check,
      color: Colors.green,
      size: 24.0,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      flex: 5,
                      child: Center(
                        child: Text(
                          " are you jojo?",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.blue,
                        child: const Text("true"),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.red,
                        child: const Text("false"),
                      ),
                    ),
                    Row(
                      children: Ansure,
                    ),
                  ],
                ),
              ),
            )));
  }
}
