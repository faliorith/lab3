import 'package:flutter/material.dart';

void main() {
  runApp(Pupupu());
}

class Pupupu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PUPUPU flutter basics '),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/Lotus.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Text(
              'PUPUPU you are here',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(content: Text('PU! This is a SnaCkBar.'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text(
                'Show PUBar',
                style: TextStyle(fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue,
                minimumSize: Size(200, 50),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text(
                'Move to Second PU',
                style: TextStyle(fontSize: 16, color: Colors.green),
              ),
              style: TextButton.styleFrom(
                minimumSize: Size(200, 50),
              ),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                // Add functionality to toggle image
              },
              child: Text(
                'Green leaves and pink lotus',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              style: OutlinedButton.styleFrom(
                minimumSize: Size(200, 50),
                side: BorderSide(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen :-)'),
      ),
      body: Center(
        child: Text(
          'This is the puPU screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
