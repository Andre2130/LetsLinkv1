import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class LetsLinkV1FirebaseUser {
  LetsLinkV1FirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

LetsLinkV1FirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<LetsLinkV1FirebaseUser> letsLinkV1FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<LetsLinkV1FirebaseUser>(
            (user) => currentUser = LetsLinkV1FirebaseUser(user));
