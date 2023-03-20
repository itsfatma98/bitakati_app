import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

// to use the hot reload (faster run for the app), we must use one of these classes => 1)StatelessWidget 2)StatefullWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 199, 158),
        body: SafeArea(
          //The Column/Row widget can have multiple childes, both Row & Column widgets can handle with the same widgets
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('Images/i.png'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Fatima Ibrahim Ahmed',
                style: TextStyle(
                    color: Color.fromARGB(255, 58, 57, 57),
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Software Engineer',
                style: TextStyle(
                  color: Color.fromARGB(255, 78, 78, 78),
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //Add line to devide the labels from cards
              SizedBox(
                height: 30.0,
                width: 200.0,
                child: Divider(
                  color: Color.fromARGB(255, 116, 30, 4),
                ),
              ),
              Card(
                margin: EdgeInsets.all(15.0),
                //The card widget doesn't have padding proparty, instead of that we put the row inside "Padding Widget"
                //padding: const EdgeInsets.all(10.0),
                //The color of cards is White by default
                //color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.phone,
                      size: 35.0, color: Color.fromARGB(255, 129, 43, 2)),
                  title: Text(
                    '+966 50 000 0000',
                    style: TextStyle(fontSize: 23.0),
                  ),
                ),
              ),
              Card(
                  margin: EdgeInsets.all(15.0),
                  child: ListTile(
                    leading: Icon(Icons.email,
                        size: 35.0, color: Color.fromARGB(255, 129, 43, 2)),
                    title: Text(
                      'Fahmed0041@stu.kau.sa',
                      style: TextStyle(fontSize: 22.0),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
