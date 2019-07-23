import 'package:flutter/material.dart';

import '../../../blocs/login_bloc.dart';

class PasswordField extends StatelessWidget {
  final LoginBloc bloc;

  PasswordField({this.bloc});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: false,
          decoration: InputDecoration(
            labelText: 'Enter Your password',
            hintText: 'Password',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }
}
