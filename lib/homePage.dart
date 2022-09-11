import 'package:flutter/material.dart';
import 'package:whatsapp/callPage.dart';
import 'package:whatsapp/chateListPage.dart';
import 'package:whatsapp/statusPage.dart';
import 'package:whatsapp/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  backgroundColor: greenWhatsAppColor,
                  pinned: true,
                  floating: true,
                  title: Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("WhatsApp"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Icon(Icons.search), Icon(Icons.more_vert)],
                        )
                      ],
                    ),
                  ),
                  bottom: TabBar(

                    indicatorColor: Colors.white,
                    indicatorWeight: 3,

                    physics: ScrollPhysics(),
                    isScrollable: true,
                    tabs: [
                      Container(
                          width: 20,
                          child: Icon(
                            Icons.enhance_photo_translate,
                            size: 20,
                          )),
                      Text(
                        "CHATS",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "STATUS",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "CALLS",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(children: [
              Container(
                color: Colors.red,
              ),
              ChateListPage(),
              StatusPage(),
              CallsPage(),
            ])),
      ),
    );
  }
}
