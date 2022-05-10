// ignore_for_file: unused_import

import 'package:facebook/Desktop/screens/gaming.dart';
import 'package:facebook/Desktop/screens/groups.dart';
import 'package:facebook/Desktop/screens/home.dart';
import 'package:facebook/Desktop/screens/markeplace.dart';
import 'package:facebook/Desktop/screens/watch.dart';
import 'package:facebook/Desktop/sides/fside.dart';
import 'package:facebook/Desktop/sides/fsideb.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class Web extends StatefulWidget {
  const Web({Key? key}) : super(key: key);

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: const Color(0XFFF0F2F5),
        appBar: AppBar(
          backgroundColor: const Color(0XFFFFFFFF),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                    iconSize: 40,
                    onPressed: () {},
                    icon: const Icon(Icons.facebook_rounded,
                        color: Color(0XFF0A82ED))),
                const SizedBox(
                  width: 250,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Color(0XFF65676B),
                          // fontWeight: FontWeight.w5,
                          fontSize: 18,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0XFF65676B),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0XFFF0F2F5)),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                const Expanded(
                  flex: 8,
                  child: SizedBox(
                    width: 500,
                    child: TabBar(
                        indicatorWeight: 3.0,
                        indicatorColor:  Color(0XFF1B74E4),
                        tabs:  [
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
                const SizedBox(
                  width: 100,
                ),
                const Chip(
                  label: Text('Liam'),
                  backgroundColor: Color(0XFFFFFFFF),
                  avatar: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1651601787600-40ad979813ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzOHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 50,
                    height: 50,
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
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color(0XFFE4E6EB), shape: BoxShape.circle),
                    child: Badge(
                      position: const BadgePosition(
                        // start: 10,
                        top: 0,
                        end: 4,
                      ),
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
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color(0XFFE4E6EB), shape: BoxShape.circle),
                    child: Badge(
                      position: const BadgePosition(
                        // start: 10,
                        top: 0,
                        end: 4,
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
                  width: 50,
                  height: 50,
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
        body: Row(children: [
          Expanded(flex: 1, child: List()),
           Expanded(
              flex: 2,
              child: TabBarView(children: [
                Home(width: width,),
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
