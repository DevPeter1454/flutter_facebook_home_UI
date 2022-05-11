import 'package:flutter/material.dart';
import 'package:facebook/Desktop/screens/gaming.dart';
import 'package:facebook/Desktop/screens/groups.dart';
import 'package:facebook/Desktop/screens/home.dart';
import 'package:facebook/Desktop/screens/markeplace.dart';
import 'package:facebook/Desktop/screens/watch.dart';
import 'package:facebook/Desktop/sides/fside.dart';
import 'package:facebook/Desktop/sides/fsideb.dart';
import 'package:badges/badges.dart';

class Mini extends StatefulWidget {
  const Mini({Key? key}) : super(key: key);

  @override
  State<Mini> createState() => _MiniState();
}

class _MiniState extends State<Mini> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: const Color(0XFFF0F2F5),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          // elevation: 0.0,
          backgroundColor: const Color(0XFFFFFFFF),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                  child: IconButton(
                      iconSize: 40,
                      onPressed: () {},
                      icon: const Icon(Icons.facebook_rounded,
                          color: Color(0XFF0A82ED))),
                ),
                IconButton(
                  icon: const Icon(Icons.search_rounded,
                      color: Color(0XFF65676B)),
                  onPressed: () {},
                ),
                // const Expanded(
                //   flex: 4,
                //   child: SizedBox(
                //     width: 420,
                //   ),
                // ),
                const Expanded(
                  flex: 8,
                  child: SizedBox(
                    width: 500,
                    child: TabBar(
                        indicatorWeight: 3.0,
                        indicatorColor: Color(0XFF1B74E4),
                        tabs: [
                          Tab(
                            icon: Icon(
                              Icons.home_filled,
                              color: Color(0XFF8B8D90),
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.group_outlined,
                              color: Color(0XFF8B8D90),
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.video_collection_rounded,
                              color: Color(0XFF8B8D90),
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.account_circle,
                              color: Color(0XFF8B8D90),
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.notifications,
                              color: Color(0XFF8B8D90),
                            ),
                          ),
                        ]),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Color(0XFFE4E6EB), shape: BoxShape.circle),
                    child: const Icon(Icons.settings),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Color(0XFFE4E6EB), shape: BoxShape.circle),
                    child: Badge(
                      position: BadgePosition(
                          // start: 10,
                          top: 0,
                          end: width > 500 && width <= 700
                              ? 2
                              : width > 700 && width > 900
                                  ? 14
                                  : 20),
                      badgeContent: const Text(
                        '3',
                        style: TextStyle(color: Colors.white),
                      ),
                      badgeColor: const Color(0XFFE41E3F),
                      child: const Icon(Icons.settings),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Color(0XFFE4E6EB), shape: BoxShape.circle),
                    child: Badge(
                      position: BadgePosition(
                        // start: 10,
                        top: 0,
                        end: width > 500 && width <= 700
                            ? 2
                            : width > 700 && width > 900
                                ? 14
                                : 20,
                      ),
                      badgeContent: const Text(
                        '3',
                        style: TextStyle(color: Colors.white),
                      ),
                      badgeColor: const Color(0XFFE41E3F),
                      child: const Icon(Icons.notifications),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                      color: Color(0XFFE4E6EB), shape: BoxShape.circle),
                  child: const Icon(
                    Icons.arrow_drop_down,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
            // backgroundColor: Color(0XFF65676B),
            child: List()),
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
              ])),
          Expanded(flex: 1, child: ListB(width: width)),
        ]),
      ),
    );
  }
}





// 