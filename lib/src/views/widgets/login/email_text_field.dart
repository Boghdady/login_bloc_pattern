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
        return Container(
          width: MediaQuery.of(context).size.width,
          child: TextField(
            onChanged: bloc.changeEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[100],
              hintText: 'Enter Email Address',
              errorText: snapshot.error,
            ),
          ),
        );
      },
    );
  }
}
