import 'package:flutter/material.dart';

class ErrorDiolog extends StatelessWidget {
  final String? message;
  ErrorDiolog({this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Text(message!),
      actions: [
        ElevatedButton(
          child: const Center(
            child: Text("OK"),
          ),
          style: ElevatedButton.styleFrom(
             primary: Colors.red
          ),

            onPressed: (){
            Navigator.pop(context);
            },
        ),
      ],


    );
  }
}
