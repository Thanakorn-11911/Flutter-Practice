import 'package:flutter/material.dart';

void showdialogNotification(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => const AlertDialog(
            content: Text('Hi'),
          ));
}

class TabWidget extends StatelessWidget {
  const TabWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Color(0xff131316),
      elevation: 6,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'datatest',
          style: TextStyle(
            color: Color(0xFF686DCD),
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
