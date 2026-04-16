import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class MasarAuthUser {
  MasarAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<MasarAuthUser> masarAuthUserSubject =
    BehaviorSubject.seeded(MasarAuthUser(loggedIn: false));
Stream<MasarAuthUser> masarAuthUserStream() =>
    masarAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
