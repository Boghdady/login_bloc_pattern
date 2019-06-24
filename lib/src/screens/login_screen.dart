import 'package:flutter/material.dart';
import 'package:login_bloc_section14/src/blocs/provider.dart';
import '../blocs/login_bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Scaffold(
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
              emailField(bloc),
              passwordField(bloc),
              submitButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget emailField(LoginBloc bloc) {
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

  Widget passwordField(LoginBloc bloc) {
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

  Widget submitButton() {
    return FlatButton(
      child: Text("Submit"),
      onPressed: () {},
    );
  }
}
