import 'package:flutter/material.dart';
import 'package:fire-base-project/Auth/helpers/firestore_helper.dart';

class HomePage extends StatelessWidget {
  static final routeName = 'home';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: RaisedButton(onPressed: () {
          FirestoreHelper.firestoreHelper.getAllUsersFromFirestore();
        }),
      ),
    );
  }
}
