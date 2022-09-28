import 'package:flutter/material.dart';

popupDialogue(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("INGAT", textAlign: TextAlign.center,),
    content: Text(
      "BUKAN GUNUNG YANG HARUS KITA TAKLUKAN, MELAINKAN DIRI KITA SENDIRI!",
      textAlign: TextAlign.center,
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
