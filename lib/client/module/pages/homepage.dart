

import 'package:flutter/material.dart';

import '../../../shared/widget.dart';
import '../../../shared/constants.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  // late ScrollController controller;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 10);
    super.initState();

    // controller = ScrollController();
  }

  // @override
  // void dispose() {
  //  controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1F1F29),
      appBar: AppBar(
        title: const Text("นิยาย"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: bgColor1,
        leading: Container(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(0.5),
            child: IconButton(
                color: textColor2,
                iconSize: 20,
                icon: const Icon(Icons.notifications_active),
                onPressed: () {
                  showdialogNotification(context);
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(0.5),
            child: IconButton(
                color: textColor2,
                iconSize: 20,
                icon: const Icon(Icons.tune_outlined),
                onPressed: () {
                  showdialogNotification(context);
                }),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 0.1,
          isScrollable: true,
          tabs: List.generate(10, (index) => const TabWidget()),
        ),
      ),
      body: ListView.builder(
        // controller: controller,
        itemCount: 20,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) {
          if (index.isOdd) {
            return const _CategoryItems();
          } else {
            return const _CategoryProductItems();
          }
        },
      ),
    );
  }
}

class _CategoryItems extends StatelessWidget {
  const _CategoryItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.centerLeft,
      color: Colors.white,
      child: const Text(
        'Category',
        style: TextStyle(
          color: Color(0xFF686DCD),
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}

class _CategoryProductItems extends StatelessWidget {
  const _CategoryProductItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Text(
        'Product',
      ),
    );
  }
}
