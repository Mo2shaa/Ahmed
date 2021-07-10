import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ResMedicalFirebaseUser {
  ResMedicalFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

ResMedicalFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ResMedicalFirebaseUser> resMedicalFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ResMedicalFirebaseUser>(
            (user) => currentUser = ResMedicalFirebaseUser(user));
