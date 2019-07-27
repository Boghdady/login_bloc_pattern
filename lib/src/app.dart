import 'package:flutter/material.dart';
import 'package:login_bloc_section14/src/helpers/router.dart';
import 'package:login_bloc_section14/src/views/screens/products_screen.dart';
import '../src/helpers/constants.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      onGenerateRoute: Router.generateRoute,
      initialRoute: loginRoute,
      title: 'Section 12',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    ));
  }
}
