import 'package:flutter/material.dart';
import 'package:login_bloc_section14/src/helpers/router.dart';
import '../src/helpers/constants.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router.generateRoute,
      initialRoute: loginRoute,
      title: 'Section 12',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    ));
  }
}
