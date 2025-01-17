
import 'package:advance_flutter_ch1/Photo%20Gallery/View/HideScreen.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';


class OpenHideFolderProvider extends ChangeNotifier {
  bool _authis = true;
  final LocalAuthentication auth = LocalAuthentication();

  Future<void> Navset(BuildContext context) async {
    if (_authis) {
      final bool canAuthenticat = await auth.canCheckBiometrics;
      if (canAuthenticat) {
        final bool didauth = await auth.authenticate(
          localizedReason: "Please enter pass",
          options: AuthenticationOptions(
            biometricOnly: true,
          ),
        );
        _authis = didauth;
      }
      if(_authis)
      {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HideFolderPage(),
        ));
      }
      else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Password is wrong")));
        _authis=true;
      }

    }
    notifyListeners();
  }
}