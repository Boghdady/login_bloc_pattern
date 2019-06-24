import 'dart:async';

import 'package:login_bloc_section14/src/mixins/validator_mixin.dart';

class LoginBloc extends Object with ValidatorMixin {
  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();

  // Retrieve data from stream ( will retrieve valid email or error )
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  // Add data to stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  // close stream controllers after done
  void dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
// make instance of bloc when i use single global instance
// final bloc = LoginBloc();
