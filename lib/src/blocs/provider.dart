import 'package:flutter/material.dart';
import 'package:login_bloc_section14/src/blocs/login_bloc.dart';

class Provider extends InheritedWidget {
  final bloc = LoginBloc();

  // constructor
  Provider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static LoginBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}
