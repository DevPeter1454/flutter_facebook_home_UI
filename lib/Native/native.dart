import 'package:flutter/material.dart';
import 'package:facebook/Desktop/screens/gaming.dart';
import 'package:facebook/Desktop/screens/groups.dart';
import 'package:facebook/Desktop/screens/home.dart';
import 'package:facebook/Desktop/screens/markeplace.dart';
import 'package:facebook/Desktop/screens/watch.dart';
import 'package:facebook/Desktop/sides/fside.dart';

class Native extends StatefulWidget {
  const Native({Key? key}) : super(key: key);

  @override
  State<Native> createState() => _NativeState();
}

class _NativeState extends State<Native> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: const Color(0XFFF0F2F5),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color(0XFFFFFFFF),
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjKYmBc3E7ztL3FwPPn8kC1JDw0kMjGyPoJA&usqp=CAU',
            ),
          ),
          actions: [
            Container(
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                    color: Color(0XFFE4E6EB), shape: BoxShape.circle),
                child: const Icon(Icons.search_rounded,
                    size: 15, color: Colors.black)),
            // SizedBox(width: 5),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5.0),
              child: Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                      color: Color(0XFFE4E6EB), shape: BoxShape.circle),
                  child: const Icon(Icons.search_rounded,
                      size: 15, color: Colors.black)),
            ),
          ],
          bottom: TabBar(
              indicatorWeight: 3.0,
              indicatorColor: const Color(0XFF1B74E4),
              tabs: [
                Tab(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.home_filled,
                      color: Color(0XFF8B8D90),
                    ),
                  ),
                ),
                const Tab(
                  icon: Icon(
                    Icons.group_outlined,
                    color: Color(0XFF8B8D90),
                  ),
                ),
                const Tab(
                  icon: Icon(
                    Icons.video_collection_rounded,
                    color: Color(0XFF8B8D90),
                  ),
                ),
                const Tab(
                  icon: Icon(
                    Icons.account_circle,
                    color: Color(0XFF8B8D90),
                  ),
                ),
                const Tab(
                  icon: Icon(
                    Icons.notifications,
                    color: Color(0XFF8B8D90),
                  ),
                ),
                const Tab(
                  icon: Icon(
                    Icons.list_rounded,
                    color: Color(0XFF8B8D90),
                  ),
                ),
              ]),
        ),
        body: Row(children: [
          // Expanded(flex: 1, child: List()),
          Expanded(
              flex: 2,
              child: TabBarView(children: [
                Home(width: width),
                const Watch(),
                const Group(),
                const Market(),
                const Gaming(),
                List(),
              ])),
          // Expanded(flex: 1, child: ListB(width: width)),
        ]),
      ),
    );
  }
}
