import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final color = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(  
      // TODO 0: Add some property here so screen color is set to constant we have defined.
        backgroundColor: color,
        body: SafeArea(
          child: Column(
            // TODO 1: Add some property here so content gets vertically aligned.
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 100.0,
                backgroundImage: NetworkImage('http://placekitten.com/450/450'),
              ),
              // TODO 2: Add some widget here so we get some vertical separation between CircleAvatar and Text.
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Triki',
                style: TextStyle(
                    // TODO 3: Add some properties here so text looks much nicer.
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'
                    ),
              ),
              // TODO 4: Add some widget here so we get some vertical separation between these two Text widgets above and below.
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'AwEsOmE kIttY'.toLowerCase(),
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
              SizedBox(
                height: 40.0,
                width: 120.0,
                child: Divider(
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
              // TODO 5: At the bottom of this file there is an infoCard function that returns a Widget. Use it three times here to create three cards with different icons and texts.
              infoCard(Icons.phone, '+48 123 456 789', text: 'Call me', icon: Icons.phone),
              infoCard(Icons.email, 'prueba@gmail.com', text: 'Email me', icon: Icons.email),
              infoCard(Icons.web, 'https://www.google.com', text: 'Visit me', icon: Icons.web),

            ],
          ),
        ),
      ),
    );
  }

  // We are going to use this widget many times, so it makes sense to extract it to
  // avoid code repetition. In fact, even if we are only going to use it once, it may
  // be a good idea to extract widgets into their own functions or classes.

  // TODO 6: Why do we use these curly brackets {} inside parantheses ()? What do they do to parameters? Please answer this question in this very comment.
  Widget infoCard(IconData phone, String s, {required IconData icon, required String text}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(
            icon,
            size: 30.0,
            color: color.shade400,
          ),
          title: Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
              color: color.shade400,
            ),
          ),
        ),
      ),
    );
  }
}
