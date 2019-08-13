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
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 16.0),
          child: TextField(
            onChanged: bloc.changePassword,
            obscureText: false,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[100],
              hintText: 'Enter Your password',
              errorText: snapshot.error,
            ),
          ),
        );
      },
    );
  }
}
