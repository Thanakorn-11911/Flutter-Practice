import 'package:flutter/material.dart';

class InboxpageScreen extends StatefulWidget {
  const InboxpageScreen({Key? key}) : super(key: key);

  @override
  State<InboxpageScreen> createState() => _InboxpageScreenState();
}

class _InboxpageScreenState extends State<InboxpageScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:Color(0xff1F1F29),
      body: Center(
        child: Text("Inbox"),
      ),
    );
  }
}
