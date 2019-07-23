import 'package:flutter/material.dart';
import 'package:login_bloc_section14/src/views/screens/login_screen.dart';

import 'blocs/login_bloc.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      bloc: LoginBloc(),
      child: MaterialApp(
        title: 'Section 12',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen(),
      ),
    );
  }
}
