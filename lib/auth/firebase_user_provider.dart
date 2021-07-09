import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FlutFirebaseUser {
  FlutFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

FlutFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FlutFirebaseUser> flutFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<FlutFirebaseUser>((user) => currentUser = FlutFirebaseUser(user));
