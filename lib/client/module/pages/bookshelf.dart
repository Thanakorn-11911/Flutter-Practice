import 'package:flutter/material.dart';

class BookshelfpageScreen extends StatefulWidget {
  const BookshelfpageScreen({ Key? key }) : super(key: key);

  @override
  State<BookshelfpageScreen> createState() => _BookshelfpageScreenState();
}

class _BookshelfpageScreenState extends State<BookshelfpageScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:Color(0xff1F1F29),
      body: Center(
        child: Text("Bookshelf"),
      ),
    );
  }
}