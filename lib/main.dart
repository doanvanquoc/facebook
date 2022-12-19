import 'package:flutter/material.dart';

import 'hometab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Facebook Basic",
      home: DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.facebook, color: Colors.blue),
                    Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                    Text(
                      "Facebook",
                      style:
                          TextStyle(color: Colors.blue, fontFamily: "Klavika"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.message,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
            bottom: TabBar(
                controller: _tabController,
                indicatorColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                      icon: Icon(
                    Icons.home_outlined,
                    color:
                        _tabController.index == 0 ? Colors.blue : Colors.grey,
                  )),
                  Tab(
                      icon: Icon(
                    Icons.video_library_outlined,
                    color:
                        _tabController.index == 1 ? Colors.blue : Colors.grey,
                  )),
                  Tab(
                      icon: Icon(
                    Icons.shopping_bag_outlined,
                    color:
                        _tabController.index == 2 ? Colors.blue : Colors.grey,
                  )),
                  Tab(
                      icon: Icon(
                    Icons.notifications_active_outlined,
                    color:
                        _tabController.index == 3 ? Colors.blue : Colors.grey,
                  ))
                ]),
          ),
          body: Center(
            child: TabBarView(controller: _tabController, children: const [
              HomeTab(),
              Text("Nothing"),
              Text("Nothing"),
              Text("Nothing"),
            ]),
          ),
        ),
      ),
    );
  }
}
