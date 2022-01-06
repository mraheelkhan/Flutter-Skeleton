import 'package:flutter/material.dart';

class ComingSoon extends StatefulWidget {
  @override
  _ComingSoonState createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coming soon',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Coming soon'),
        ),
        body: Center(
          child: Text('Coming soon',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
