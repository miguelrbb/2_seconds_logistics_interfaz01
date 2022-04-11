import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda_sellers_app/widgets/progress_bar.dart';

class LoadingDiolog extends StatelessWidget {
  final String? message;
  LoadingDiolog({this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Column(
        mainAxisSize: MainAxisSize.min,
      children: [
        circularProgress(),
        SizedBox(height: 10,),
        Text(message! +", Please wait..."),
      ],
    ),
    );
  }
}
