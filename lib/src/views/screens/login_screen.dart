import 'package:flutter/material.dart';
import 'package:login_bloc_section14/src/blocs/provider.dart';
import 'package:login_bloc_section14/src/views/widgets/login/counter_chip.dart';
import 'package:login_bloc_section14/src/views/widgets/login/email_text_field.dart';
import 'package:login_bloc_section14/src/views/widgets/login/password_text_field.dart';
import 'package:login_bloc_section14/src/views/widgets/login/submit_button.dart';

import '../../blocs/login_bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LoginBloc bloc = BlocProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          CounterShip(bloc: bloc),
        ],
      ),
      body: SizedBox(
        child: Container(
          margin: EdgeInsets.only(
            right: 24.0,
            left: 24.0,
            bottom: 24.0,
            top: MediaQuery.of(context).size.height * 0.20,
          ),
          child: Column(
            children: <Widget>[
              EmailField(bloc: bloc),
              PasswordField(bloc: bloc),
              SubmitButton(bloc: bloc),
            ],
          ),
        ),
      ),
    );
  }
}
