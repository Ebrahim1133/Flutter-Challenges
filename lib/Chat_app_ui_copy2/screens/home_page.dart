import '../app_theme.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../screens/screen.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? tabController;
  int currentTabIndex = 0;

  void onTabChange() {
    setState(() {
      currentTabIndex = tabController!.index;
      // ignore: avoid_print
      print(currentTabIndex);
    });
  }

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);

    tabController!.addListener(() {
      onTabChange();
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController!.addListener(() {
      onTabChange();
    });

    tabController!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: Text(
          'Chattie',
          style: MyTheme.kAppTitle,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () {},
          )
        ],
        elevation: 0,
      ),
      backgroundColor: MyTheme.kPrimaryColor,
      body: Column(
        children: [
          MyTabBar(tabController: tabController!),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: TabBarView(
                controller: tabController,
                children: [
                  ChatPage(),
                  const Center(child: Text('Status')),
                  const Center(child: Text('Call')),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(
          currentTabIndex == 0
              ? Icons.message_outlined
              : currentTabIndex == 1
                  ? Icons.camera_alt
                  : Icons.call,
          color: Colors.white,
        ),
      ),
    );
  }
}
