import 'dart:async';
import 'package:rxdart/rxdart.dart';

import 'package:login_bloc_section14/src/mixins/validator_mixin.dart';

// StreamController = Subject in rxDart
// Stream = Observable in rxDart
class LoginBloc extends Object with ValidatorMixin {
//  final _emailController = StreamController<String>.broadcast();
//  final _passwordController = StreamController<String>.broadcast();

  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  // Retrieve data from stream ( will retrieve valid email or error )
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);
  // take the latest values if email and password stream and return true if two streams are valid
  Stream<bool> get submitValid =>
      Observable.combineLatest2(email, password, (e, p) => true);

  // Add data to stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  void btnSubmitClick() {
    final validEmail = _emailController.value;
    final validPassword = _passwordController.value;

    print('Email is $validEmail');
    print('Password is $validPassword');
  }

  // close stream controllers after done
  void dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
// make instance of bloc when i use single global instance
// final bloc = LoginBloc();
