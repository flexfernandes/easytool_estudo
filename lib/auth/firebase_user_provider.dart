import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ProductsFirebaseUser {
  ProductsFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

ProductsFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ProductsFirebaseUser> productsFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ProductsFirebaseUser>(
            (user) => currentUser = ProductsFirebaseUser(user));
