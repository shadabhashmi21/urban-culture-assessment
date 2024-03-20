import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast(final String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    backgroundColor: Colors.black,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

Future<bool> isInternetConnected() async {
  final connectivityResult = await Connectivity().checkConnectivity();
  if (connectivityResult == ConnectivityResult.mobile) {
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  }

  return false;
}

void customPrint(final Object? value) {
  if (kDebugMode) {
    print(value);
  }
}

void showLoaderDialog(final BuildContext context, final String? message) {
  final alert = AlertDialog(
    content: Row(
      children: [
        CircularProgressIndicator(),
        Container(
            margin: EdgeInsets.only(left: 15), child: Text(message ?? ''),),
      ],
    ),
  );
  showDialog<AlertDialog>(
    barrierDismissible: false,
    context: context,
    useRootNavigator: false,
    builder: (final BuildContext context) => alert,
  );
}

void popDialog(final BuildContext context){
  Navigator.pop(context);
}