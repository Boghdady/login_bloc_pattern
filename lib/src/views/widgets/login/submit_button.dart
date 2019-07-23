import 'package:flutter/material.dart';

import '../../../blocs/login_bloc.dart';

class SubmitButton extends StatelessWidget {
  final LoginBloc bloc;

  SubmitButton({this.bloc});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: bloc.submitValid,
        builder: (context, snapshot) {
          return FlatButton(
            child: Text("Submit"),
            // it will return data if email and password is valid
            onPressed: snapshot.hasData ? bloc.btnSubmitClick : null,
          );
        });
  }
}
