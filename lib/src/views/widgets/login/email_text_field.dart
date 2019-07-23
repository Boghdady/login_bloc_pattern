import 'package:flutter/material.dart';

import '../../../blocs/login_bloc.dart';

class EmailField extends StatelessWidget {
  final LoginBloc bloc;

  EmailField({this.bloc});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Enter Email Address',
            hintText: 'you@example.com',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }
}
