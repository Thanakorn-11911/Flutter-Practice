import 'package:flutter/material.dart';

import '../../../shared/constants.dart';

class ProfilepageScreen extends StatefulWidget {
  const ProfilepageScreen({Key? key}) : super(key: key);

  @override
  State<ProfilepageScreen> createState() => _ProfilepageScreenState();
}

class _ProfilepageScreenState extends State<ProfilepageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor1,
        appBar: AppBar(
          title: const Text(
            'บัญชีผู้ใช้',
            style: TextStyle(color: Color(0xFF686DCD)),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: bgColor2,
          leading: Container(),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("Click event on Container");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff131316),
                        border: Border.all(color: Colors.black),
                      ),
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                          'assets/images/profile.jpg'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        8.0, 10, 0, 0),
                                    child: Column(
                                      children: const [
                                        Text(
                                          'T0X1C',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Color(0xffB9C1D9)),
                                        ),
                                        Text(
                                          '@T0X1C',
                                          style: TextStyle(
                                              color: Color(0xffB9C1D9)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.arrow_forward_ios),
                          )
                        ],
                      ),
                    ),
                  ),
                  //01
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff131316),
                        border: Border.all(color: Colors.black),
                      ),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundImage:
                                          AssetImage('assets/images/coin.png'),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                    child: Column(
                                      children: const [
                                        Text(
                                          '0.00',
                                          style: TextStyle(
                                              color: Color(0xffB9C1D9)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 12),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'เติมเหรียญ',
                                style: TextStyle(
                                    color: Color(0xFFEBB513), fontSize: 16),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //02
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff131316),
                        border: Border.all(color: Colors.black),
                      ),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Icon(
                                        Icons.notifications,
                                        color: Color(0xffB9C1D9),
                                      )),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                    child: Column(
                                      children: const [
                                        Text(
                                          'รายชื่อนิยายที่ Favorite ไว้',
                                          style: TextStyle(
                                            color: Color(0xffB9C1D9),
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                          const Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text(
                              '0',
                              style: TextStyle(
                                  color: Color(0xffB9C1D9), fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //03
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff131316),
                        border: Border.all(color: Colors.black),
                      ),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Icon(
                                        Icons.bookmark,
                                        color: Color(0xffB9C1D9),
                                      )),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                    child: Column(
                                      children: const [
                                        Text(
                                          'รายชื่อนิยายที่ Bookmark ไว้',
                                          style: TextStyle(
                                            color: Color(0xffB9C1D9),
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                          const Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text(
                              '0',
                              style: TextStyle(
                                  color: Color(0xffB9C1D9), fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //04
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff131316),
                        border: Border.all(color: Colors.black),
                      ),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Icon(
                                        Icons.access_alarm,
                                        color: Color(0xffB9C1D9),
                                      )),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                    child: Column(
                                      children: const [
                                        Text(
                                          'ประวัติการอ่านนิยายทั้งหมด',
                                          style: TextStyle(
                                              color: Color(0xffB9C1D9),
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff131316),
                        border: Border.all(color: Colors.black),
                      ),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.power_settings_new,
                                      color: Color(0xffB9C1D9),
                                    )),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                  child: Column(
                                    children: const [
                                      Text(
                                        'ออกจากระบบ',
                                        style: TextStyle(
                                            color: Color(0xffB9C1D9),
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
