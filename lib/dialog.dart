library dialog;

import 'package:flutter/material.dart';

class ShowDialog {
  static Future showDialogGeneral({
    @required BuildContext context,
    @required bool status,
    @required String description,
  }) {
    return showGeneralDialog(
        transitionBuilder: (context, a1, a2, widget) {
          return Transform.scale(
            scale: a1.value,
            child: Opacity(
              opacity: a1.value,
              child: AlertDialog(
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0)),
                title: Icon(!status ? Icons.remove_circle_rounded : Icons.check_circle,color: !status ? Colors.red : Colors.green,size: 55,),
                content:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(description),
                  ],
                ),
              ),
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 200),
        barrierDismissible: true,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {});
  }
}
