import 'package:flutter/material.dart';
import 'package:dvm/providers/AuthProvider.dart';
import 'package:dvm/activities/home.dart';
import 'package:dvm/activities/login.dart';
import 'package:dvm/activities/register.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AuthProvider(),
        child: Consumer<AuthProvider>(builder: (context, authProvider, child) {
          return MultiProvider(
              providers: [
                ChangeNotifierProvider<AuthProvider>(
                    create: (context) => AuthProvider())
              ],
              child: MaterialApp(title: 'Welcome to Flutter', routes: {
                '/': (context) {
                  final authProvider = Provider.of<AuthProvider>(context);
                  if (authProvider.isAuthenticated) {
                    return Home();
                  } else {
                    return Login();
                  }
                },
                '/login': (context) => Login(),
                '/register': (context) => Register(),
                '/home': (context) => Home(),
              }));
        }));
  }
}
